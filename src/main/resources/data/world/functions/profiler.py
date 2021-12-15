import sys
import subprocess
import json
import shlex

def getFile(path):
    error = 0
    try:
        file = open(path, "r")
        jsonData = file.read()
        file.close()
    except:
        print("Unexpected error:", sys.exc_info())
        error = 1
    if error != 0:
        jsonData = error
    return jsonData
    
def saveJson(path, jsonData):
    error = 0
    try:
        file = open(path, "w")
        file.write(json.dumps(jsonData))
        file.close()
    except:
        print("Unexpected error:", sys.exc_info())
        error = 1
    return error
    
def saveFile(path, jsonData):
    error = 0
    try:
        file = open(path, "w")
        file.write(jsonData)
        file.close()
    except:
        print("Unexpected error:", sys.exc_info())
        error = 1
    return error

def findstr(string, ex):
    fileList = str(subprocess.check_output('cmd.exe /c dir /s /b ' + ex), "utf-8").split("\r\n")
    i = 0
    out = [False, "null"]
    while i < len(fileList):
        try:
            # print(fileList[i])
            cont = getFile(fileList[i])
            # print(cont)
            if cont.find(string) != -1:
                out = [True, fileList[i].replace("\\", "$").replace(".", "@").replace(":", "#")]
                i = len(fileList)
        except:
            pass
        i = i + 1
    return out
    
def null(nulln):
    return nulln
    
def main():
    keys = []
    jsonData = {}
    profile = getFile(sys.argv[1])
    print(sys.argv[1])
    i = 0
    n = 0
    while i < len(profile.split("\n")):
        try:
            n = int(profile.split("\n")[i].split("|   ")[0].split("[")[1].split("]")[0])
        except:
            n = 0
        try:
            print(profile.split("\n")[i].split("|   ")[n].split("(")[1])
        except:
            pass
        try:
            if float(profile.split("\n")[i].split("|   ")[n].split("(")[1].split("/")[0]) != 69:
                if float(profile.split("\n")[i].split("|   ")[n].split("(")[1].split("/")[2].replace("%", "")) != 0:
                    result = findstr((profile.split("\n")[i].split("|   ")[n].split("(")[0]), "*.mcfunction")
                    if result[0] == True:
                        try:
                            null(jsonData[str(result[1].split(":")[0])])
                        except:
                            jsonData[str(result[1].split(":")[0])] = float(0.0)
                        jsonData[str(result[1].split(":")[0])] = float(jsonData[str(result[1].split(":")[0])]) + float(profile.split("\n")[i].split("|   ")[n].split("(")[1].split("/")[2].replace("%", ""))
        except:
            pass
            # print("Unexpected error:", sys.exc_info())
        print(jsonData)
        i = i + 1
    print(str(jsonData))
    saveJson(".\\profiler.txt", jsonData)
    cont = getFile(".\\profiler.txt")
    print(cont.replace(",", "\n").replace("\"", "").replace(": ", ",").replace("{", "").replace("}", ""))
    
main()