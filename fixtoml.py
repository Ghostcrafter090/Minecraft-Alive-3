import pytools
import sys

def main():
    toml = pytools.IO.getFile("mods.toml")
    pytools.IO.saveFile('src\\main\\resources\\META-INF\\mods.toml', toml.replace('version="1.0.0"', 'version="' + sys.argv[1] + '"'))

main()