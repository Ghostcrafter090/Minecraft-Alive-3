
scoreboard objectives add salmon_ent dummy 
scoreboard objectives add salmon_max dummy 
execute unless entity @e[name=dmain,scores={salmon_max=0..}] run scoreboard players set @e[name=dmain] salmon_max 50 
execute store result score @e[name=dmain] salmon_ent if entity @e[type=salmon] 
scoreboard players operation @e[name=dmain] salmon_ent -= @e[name=dmain] salmon_max 
execute if entity @e[name=dmain,scores={salmon_ent=1..}] run kill @e[type=salmon,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={salmon_ent=1..}] run say [Minecraft Alive] - Max salmon detected. Clearing... 