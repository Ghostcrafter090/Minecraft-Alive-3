
function world:lagcontrol/mobs/pig_/0
execute unless entity @e[name=dmain,scores={pig_max=0..}] run scoreboard players set @e[name=dmain] pig_max 50 
function world:lagcontrol/mobs/pig_/2
execute if entity @e[name=dmain,scores={pig_ent=1..}] run function world:lagcontrol/mobs/pig_/3