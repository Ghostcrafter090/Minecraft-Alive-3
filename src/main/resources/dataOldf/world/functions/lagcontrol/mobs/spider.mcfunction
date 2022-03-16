
scoreboard objectives add spider_ent dummy 
scoreboard objectives add spider_max dummy 
execute unless entity @e[name=dmain,scores={spider_max=0..}] run scoreboard players set @e[name=dmain] spider_max 50 
execute store result score @e[name=dmain] spider_ent if entity @e[type=spider] 
scoreboard players operation @e[name=dmain] spider_ent -= @e[name=dmain] spider_max 
execute if entity @e[name=dmain,scores={spider_ent=1..}] run kill @e[type=spider,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={spider_ent=1..}] run say [Minecraft Alive] - Max spider detected. Clearing... 