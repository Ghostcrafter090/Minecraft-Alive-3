
function world:lagcontrol/mobs/pig.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={pig_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] pig_max 50 
function world:lagcontrol/mobs/pig.0/2
execute if entity @e[tag=dmain,scores={pig_ent=1..}] run function world:lagcontrol/mobs/pig.0/3