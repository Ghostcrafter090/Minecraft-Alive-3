
function world:lagcontrol/mobs/eye_of_end.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={eye_of_end_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] eye_of_end_max 50 
function world:lagcontrol/mobs/eye_of_end.0/2
execute if entity @e[tag=dmain,scores={eye_of_end_ent=1..}] run function world:lagcontrol/mobs/eye_of_end.0/3