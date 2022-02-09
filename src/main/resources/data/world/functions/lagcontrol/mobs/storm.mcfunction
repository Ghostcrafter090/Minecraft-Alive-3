
function world:lagcontrol/mobs/storm_/0
execute unless entity @e[name=dmain,scores={storm_max=0..}] run scoreboard players set @e[name=dmain] storm_max 20 
function world:lagcontrol/mobs/storm_/2
execute if entity @e[name=dmain,scores={storm_ent=1..}] run function world:lagcontrol/mobs/storm_/3