
execute as @e[tag=lagcontrol,limit=20,sort=random] run function world:lagcontrol/kill
execute if entity @e[name=dmain,type=marker,scores={logMcaDebug=1..1}] run say [Minecraft Alive] - Max killable entities detected. Clearing...