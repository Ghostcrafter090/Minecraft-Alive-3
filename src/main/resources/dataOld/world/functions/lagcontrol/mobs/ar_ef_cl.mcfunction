
scoreboard objectives add ar_ef_cl_ent dummy 
scoreboard objectives add ar_ef_cl_max dummy 
execute unless entity @e[name=dmain,scores={ar_ef_cl_max=0..}] run scoreboard players set @e[name=dmain] ar_ef_cl_max 50 
execute store result score @e[name=dmain] ar_ef_cl_ent if entity @e[type=area_effect_cloud] 
scoreboard players operation @e[name=dmain] ar_ef_cl_ent -= @e[name=dmain] ar_ef_cl_max 
execute if entity @e[name=dmain,scores={ar_ef_cl_ent=1..}] run kill @e[type=area_effect_cloud,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={ar_ef_cl_ent=1..}] run say [Minecraft Alive] - Max area_effect_cloud detected. Clearing... 