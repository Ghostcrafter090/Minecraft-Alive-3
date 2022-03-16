
function world:lagcontrol/mobs/ar_ef_cl.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={ar_ef_cl_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] ar_ef_cl_max 50 
function world:lagcontrol/mobs/ar_ef_cl.0/2
execute if entity @e[tag=dmain,scores={ar_ef_cl_ent=1..}] run function world:lagcontrol/mobs/ar_ef_cl.0/3