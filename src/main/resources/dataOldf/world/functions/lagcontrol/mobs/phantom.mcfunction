
scoreboard objectives add phantom_ent dummy 
scoreboard objectives add phantom_max dummy 
execute unless entity @e[name=dmain,scores={phantom_max=0..}] run scoreboard players set @e[name=dmain] phantom_max 50 
execute store result score @e[name=dmain] phantom_ent if entity @e[type=phantom] 
scoreboard players operation @e[name=dmain] phantom_ent -= @e[name=dmain] phantom_max 
execute if entity @e[name=dmain,scores={phantom_ent=1..}] run kill @e[type=phantom,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={phantom_ent=1..}] run say [Minecraft Alive] - Max phantom detected. Clearing... 