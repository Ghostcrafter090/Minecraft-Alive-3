
scoreboard objectives add item_ent dummy 
scoreboard objectives add item_max dummy 
execute unless entity @e[name=dmain,scores={item_max=0..}] run scoreboard players set @e[name=dmain] item_max 100
execute store result score @e[name=dmain] item_ent if entity @e[type=item] 
scoreboard players operation @e[name=dmain] item_ent -= @e[name=dmain] item_max 
execute if entity @e[name=dmain,scores={item_ent=1..}] run kill @e[type=item,limit=50,sort=random,tag=!playerfound] 
execute if entity @e[name=dmain,scores={item_ent=1..}] run say [Minecraft Alive] - Max item detected. Clearing... 