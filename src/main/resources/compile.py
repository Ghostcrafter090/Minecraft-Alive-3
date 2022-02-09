import pytools
import sys
import os

# positioned ~ ~ ~
# as <tag>
# at <tag>
# anchored <eyes|feet>
# facing ~ ~ ~
# facing entity <tag> <eyes|feet>
# in <dimension>
# rotated <rot>
# rotated as <tag>
# store <result|success> block ~ ~ ~ <path> <type> <scale>
# store <result|success> bossbar <id> <max|value>
# store <result|success> entity <tag> <path> <type> <scale>
# store <result|success> score <tag> <obj>
# store <result|success> storage <tag> <path> <type> <scale>
# <if|unless> entity <tag>
# <if|unless> block ~ ~ ~ <id>
# <if|unless> score <tag> <obj> <operator> <tag> <obj>
# <if|unless> blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ <all|masked>
# <if|unless> dataOld block ~ ~ ~ <dataOld>
# <if|unless> dataOld entity <tag> <dataOld>
# <if|unless> dataOld storage <tag> <dataOld>
# <if|unless> predicate <predicate>
# ;run

exesyn = [
    ["positioned", 3],
    ["as", 1],
    ["at", 1],
    ["anchored", 1],
    ["facing entity", 2],
    ["facing" , 3],
    ["in", 1],
    ["rotated as", 1],
    ["rotated", 1],
    ["store result block", 6],
    ["store result bossbar", 2],
    ["store result entity", 4],
    ["store result score", 2],
    ["store result storage", 4],
    ["store success block", 6],
    ["store success bossbar", 2],
    ["store success entity", 4],
    ["store success score", 2],
    ["store success storage", 4],
    ["if dataOld block", 4],
    ["if dataOld entity", 2],
    ["if dataOld storage", 2],
    ["if blocks", 10],
    ["if block", 4],
    ["if entity", 1],
    ["if score", 5],
    ["if predicate", 1],
    ["unless dataOld block", 4],
    ["unless dataOld entity", 2],
    ["unless dataOld storage", 2],
    ["unless blocks", 10],
    ["unless entity", 1],
    ["unless block", 4],
    ["unless score", 5],
    ["unless predicate", 1]
]

def dummy(inf):
    dummy = inf

class util:
    def parseSpaces(linesN):
        lines = linesN
        n = 0
        sq = 0
        cu = 0
        while n < len(lines):
            if lines[n] == "[":
                sq = sq + 1
            if lines[n] == "]":
                sq = sq - 1
            if lines[n] == "{":
                cu = cu + 1
            if lines[n] == "}":
                cu = cu - 1
            if (cu > 0) or (sq > 0):
                if lines[n] == " ":
                    linesN = linesN[0:n] + "\n" + linesN[n + 1:len(linesN)]
            n = n + 1
            # print(str(sq) + " ;;; " + str(cu))
        return [linesN, (sq == 0) and (cu == 0)]

    def processDups(json, sets, linesN, old, num):
        f = 0
        while f < len(exesyn):
            if linesN.find("execute ") == -1:
                linesN = "execute as @s[tag=REPLACEME] run " + linesN
            if linesN.find(" run ") == -1:
                linesN = "execute as @s[tag=REPLACEME] run " + linesN.replace("execute", "exefuckute")
            # print(linesN)
            naf = "execute " + exesyn[f][0] + " "
            if linesN.find(naf) != -1:
                new = linesN.split(naf)[1].split(" ")
                l = 0
                strf = ""
                while l < exesyn[f][1]:
                    strf = strf + new[l] + " "
                    l = l + 1
                try:
                    dummy(json[num][naf + strf])
                    if old == (naf + strf):
                        # print("true")
                        json[num][naf + strf].append(linesN.split(naf + strf)[1].replace("\n", " "))
                        old = naf + strf
                    else:
                        # print("false")
                        num = num + 1
                        sets.append([])
                        json.append({})
                        sets[num].append(naf + strf)
                        json[num][naf + strf] = [linesN.split(naf + strf)[1].replace("\n", " ")]
                        old = naf + strf
                except:
                    # print("Unexpected error:", sys.exc_info())
                    # print("nan")
                    sets[num].append(naf + strf)
                    json[num][naf + strf] = [linesN.split(naf + strf)[1].replace("\n", " ")]
                    old = naf + strf
            f = f + 1
        return [json, sets, old, num]

class main:
    def convFuncPath(path):
        print(path)
        first = path.split("\\dataOld\\")[1].replace("\\", "/")
        second = first.split("/")[0] + ":" + first.split(first.split("/")[0] + "/")[1]
        out = second[0:(len(second) - len(second.split(".")[-1])) - 1]
        print(out)
        return out
    
    def genFileStr(group, sets, path):
        # functions = [[0, <name_0>], [1, <name_1>],..., [n, <name_n>]]
        fileTexts = [""]
        mainFile = ""
        i = 0
        num = 0
        while i < len(sets):
            n = 0
            while n < len(sets[i]):
                f = 0
                if len(group[i][sets[i][n]]) > 1:
                    while f < len(group[i][sets[i][n]]):
                        fileTexts[num] = fileTexts[num] + "\n" + ("execute " + group[i][sets[i][n]][f]).replace("\n", " ").replace("execute as @s[tag=REPLACEME]  run ", "").replace("execute as @s[tag=REPLACEME] run ", "").replace("  run ", " run ").replace("exefuckute", "execute")
                        f = f + 1
                    mainFile = mainFile + "\n" + (sets[i][n] + " run function " + (main.convFuncPath(path).replace(":functions/", ":") + "_") + "/" + str(num)).replace("\n", " ").replace("execute as @s[tag=REPLACEME]  run ", "").replace("execute as @s[tag=REPLACEME] run ", "").replace("  run ", " run ").replace("exefuckute", "execute")
                else:
                    mainFile = mainFile + "\n" + (sets[i][n] + group[i][sets[i][n]][f]).replace("\n", " ").replace("execute as @s[tag=REPLACEME]  run ", "").replace("execute as @s[tag=REPLACEME] run ", "").replace("  run ", " run ").replace("exefuckute", "execute")
                    f = 1
                n = n + 1
                fileTexts[num] = fileTexts[num].replace("execute run ", "").replace("executerun ", "").replace("exefuckute", "execute")
                num = num + 1
                fileTexts.append("")
            i = i + 1
        return [mainFile, fileTexts]

    def getPatterns(path):
        lines = pytools.IO.getFile(path).split("\n")
        i = 0
        old = ""
        num = 0
        groups = [{}]
        sets = [[]]
        while i < len(lines):
            if (lines[i] != ""):
                if lines[i][0] != "#":
                    linesL = util.parseSpaces(lines[i])
                    if linesL[1]:
                        new = util.processDups(groups, sets, linesL[0], old, num)
                        groups = new[0]
                        sets = new[1]
                        old = new[2]
                        num = new[3]
            i = i + 1
        return main.genFileStr(groups, sets, path)

class files:
    def genStructure(path, fileSets):
        os.system("mkdir \"" + path.replace("\\dataOld\\", "\\data\\").split(".mcfunction")[0] + "_\"")
        pytools.IO.saveFile(path.replace("\\dataOld\\", "\\data\\"), fileSets[0])
        i = 0
        while i < len(fileSets[1]):
            if fileSets[1][i] != "":
                pytools.IO.saveFile(path.replace("\\dataOld\\", "\\data\\").split(".mcfunction")[0] + "_\\" + str(i) + ".mcfunction", fileSets[1][i])
            i = i + 1

def run(path):
    print(path)
    files.genStructure(path, main.getPatterns(path))

def runMain():
    os.system('dir /s /b dataOld\*.mcfunction > mcList.txt')
    fileList = pytools.IO.getFile('mcList.txt').split("\n")
    i = 0
    while i < len(fileList):
        try:
            run(fileList[i])
        except:
            print("Unexpected error:", sys.exc_info())
        i = i + 1

runMain()








                        

