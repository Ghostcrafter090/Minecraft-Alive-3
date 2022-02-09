
scoreboard objectives add shulker_ent dummy 
scoreboard objectives add shulker_max dummy 
execute unless entity @e[name=dmain,scores={shulker_max=0..}] run scoreboard players set @e[name=dmain] shulker_max 50 
execute store result score @e[name=dmain] shulker_ent if entity @e[type=shulker] 
scoreboard players operation @e[name=dmain] shulker_ent -= @e[name=dmain] shulker_max 
execute if entity @e[name=dmain,scores={shulker_ent=1..}] run kill @e[type=shulker,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={shulker_ent=1..}] run say [Minecraft Alive] - Max shulker detected. Clearing... 