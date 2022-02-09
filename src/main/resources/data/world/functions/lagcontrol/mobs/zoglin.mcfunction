
function world:lagcontrol/mobs/zoglin_/0
execute unless entity @e[name=dmain,scores={zoglin_max=0..}] run scoreboard players set @e[name=dmain] zoglin_max 50 
function world:lagcontrol/mobs/zoglin_/2
execute if entity @e[name=dmain,scores={zoglin_ent=1..}] run function world:lagcontrol/mobs/zoglin_/3