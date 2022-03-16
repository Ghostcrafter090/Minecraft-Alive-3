


execute as @e[tag=!notick,tag=mina,limit=15,sort=random] run function world:lagcontrol/kill
execute if entity @e[tag=!notick,tag=dmain,type=marker,scores={logMcaDebug=1..1}] run say [Alive] - Max Alive activity detected. Clearing...