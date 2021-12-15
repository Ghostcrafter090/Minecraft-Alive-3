
scoreboard objectives add pufferfish_ent dummy 
scoreboard objectives add pufferfish_max dummy 
execute unless entity @e[name=dmain,scores={pufferfish_max=0..}] run scoreboard players set @e[name=dmain] pufferfish_max 50 
execute store result score @e[name=dmain] pufferfish_ent if entity @e[type=pufferfish] 
scoreboard players operation @e[name=dmain] pufferfish_ent -= @e[name=dmain] pufferfish_max 
execute if entity @e[name=dmain,scores={pufferfish_ent=1..}] run kill @e[type=pufferfish,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={pufferfish_ent=1..}] run say [Minecraft Alive] - Max pufferfish detected. Clearing... 