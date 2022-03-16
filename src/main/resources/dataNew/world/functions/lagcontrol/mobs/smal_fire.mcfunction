
function world:lagcontrol/mobs/smal_fire.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={smal_fire_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] smal_fire_max 50 
function world:lagcontrol/mobs/smal_fire.0/2
execute if entity @e[tag=dmain,scores={smal_fire_ent=1..}] run function world:lagcontrol/mobs/smal_fire.0/3