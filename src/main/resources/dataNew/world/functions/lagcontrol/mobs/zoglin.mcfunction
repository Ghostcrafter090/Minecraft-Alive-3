
function world:lagcontrol/mobs/zoglin.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={zoglin_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] zoglin_max 50 
function world:lagcontrol/mobs/zoglin.0/2
execute if entity @e[tag=dmain,scores={zoglin_ent=1..}] run function world:lagcontrol/mobs/zoglin.0/3