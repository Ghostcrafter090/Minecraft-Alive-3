
function world:lagcontrol/mobs/eye_of_end_/0
execute unless entity @e[name=dmain,scores={eye_of_end_max=0..}] run scoreboard players set @e[name=dmain] eye_of_end_max 50 
function world:lagcontrol/mobs/eye_of_end_/2
execute if entity @e[name=dmain,scores={eye_of_end_ent=1..}] run function world:lagcontrol/mobs/eye_of_end_/3