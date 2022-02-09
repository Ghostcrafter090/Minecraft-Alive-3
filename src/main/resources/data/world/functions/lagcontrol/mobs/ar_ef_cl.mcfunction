
function world:lagcontrol/mobs/ar_ef_cl_/0
execute unless entity @e[name=dmain,scores={ar_ef_cl_max=0..}] run scoreboard players set @e[name=dmain] ar_ef_cl_max 50 
function world:lagcontrol/mobs/ar_ef_cl_/2
execute if entity @e[name=dmain,scores={ar_ef_cl_ent=1..}] run function world:lagcontrol/mobs/ar_ef_cl_/3