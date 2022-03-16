
function world:lagcontrol/mobs/storm.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={storm_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] storm_max 20 
function world:lagcontrol/mobs/storm.0/2
execute if entity @e[tag=dmain,scores={storm_ent=1..}] run function world:lagcontrol/mobs/storm.0/3