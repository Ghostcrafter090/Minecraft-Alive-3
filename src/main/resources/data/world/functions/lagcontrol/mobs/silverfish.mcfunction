
function world:lagcontrol/mobs/silverfish_/0
execute unless entity @e[name=dmain,scores={silverfish_max=0..}] run scoreboard players set @e[name=dmain] silverfish_max 50 
function world:lagcontrol/mobs/silverfish_/2
execute if entity @e[name=dmain,scores={silverfish_ent=1..}] run function world:lagcontrol/mobs/silverfish_/3