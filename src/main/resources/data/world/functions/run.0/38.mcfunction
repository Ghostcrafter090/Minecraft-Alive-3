
function world:run.0/38.1/0
execute unless entity @e[tag=!notick,type=marker,tag=dmain,scores={starttime=..12}] run scoreboard players operation @e[tag=!notick,type=marker,tag=dmain] starttime += @e[tag=!notick,type=marker,tag=dmain] blockt