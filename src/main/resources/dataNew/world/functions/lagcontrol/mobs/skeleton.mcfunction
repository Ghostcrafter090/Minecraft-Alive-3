
function world:lagcontrol/mobs/skeleton.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={skeleton_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] skeleton_max 50 
function world:lagcontrol/mobs/skeleton.0/2
execute if entity @e[tag=dmain,scores={skeleton_ent=1..}] run function world:lagcontrol/mobs/skeleton.0/3