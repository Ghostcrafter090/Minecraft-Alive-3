
scoreboard objectives add cave_spider_ent dummy 
scoreboard objectives add cave_spider_max dummy 
execute unless entity @e[name=dmain,scores={cave_spider_max=0..}] run scoreboard players set @e[name=dmain] cave_spider_max 50 
execute store result score @e[name=dmain] cave_spider_ent if entity @e[type=cave_spider] 
scoreboard players operation @e[name=dmain] cave_spider_ent -= @e[name=dmain] cave_spider_max 
execute if entity @e[name=dmain,scores={cave_spider_ent=1..}] run kill @e[type=cave_spider,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={cave_spider_ent=1..}] run say [Minecraft Alive] - Max cave_spider detected. Clearing... 