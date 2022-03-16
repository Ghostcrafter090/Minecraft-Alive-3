
scoreboard objectives add potion_ent dummy 
scoreboard objectives add potion_max dummy 
execute unless entity @e[name=dmain,scores={potion_max=0..}] run scoreboard players set @e[name=dmain] potion_max 50 
execute store result score @e[name=dmain] potion_ent if entity @e[type=potion] 
scoreboard players operation @e[name=dmain] potion_ent -= @e[name=dmain] potion_max 
execute if entity @e[name=dmain,scores={potion_ent=1..}] run kill @e[type=potion,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={potion_ent=1..}] run say [Minecraft Alive] - Max potion detected. Clearing... 