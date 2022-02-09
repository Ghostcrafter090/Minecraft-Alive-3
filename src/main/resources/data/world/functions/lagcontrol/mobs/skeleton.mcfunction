
function world:lagcontrol/mobs/skeleton_/0
execute unless entity @e[name=dmain,scores={skeleton_max=0..}] run scoreboard players set @e[name=dmain] skeleton_max 50 
function world:lagcontrol/mobs/skeleton_/2
execute if entity @e[name=dmain,scores={skeleton_ent=1..}] run function world:lagcontrol/mobs/skeleton_/3