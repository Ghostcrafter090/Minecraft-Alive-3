
scoreboard objectives add silverfish_ent dummy 
scoreboard objectives add silverfish_max dummy 
execute unless entity @e[name=dmain,scores={silverfish_max=0..}] run scoreboard players set @e[name=dmain] silverfish_max 50 
execute store result score @e[name=dmain] silverfish_ent if entity @e[type=silverfish] 
scoreboard players operation @e[name=dmain] silverfish_ent -= @e[name=dmain] silverfish_max 
execute if entity @e[name=dmain,scores={silverfish_ent=1..}] run kill @e[type=silverfish,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={silverfish_ent=1..}] run say [Minecraft Alive] - Max silverfish detected. Clearing... 