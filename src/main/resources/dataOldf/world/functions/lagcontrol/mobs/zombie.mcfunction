
scoreboard objectives add zombie_ent dummy 
scoreboard objectives add zombie_max dummy 
execute unless entity @e[name=dmain,scores={zombie_max=0..}] run scoreboard players set @e[name=dmain] zombie_max 50 
execute store result score @e[name=dmain] zombie_ent if entity @e[type=zombie] 
scoreboard players operation @e[name=dmain] zombie_ent -= @e[name=dmain] zombie_max 
execute if entity @e[name=dmain,scores={zombie_ent=1..}] run kill @e[type=zombie,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={zombie_ent=1..}] run say [Minecraft Alive] - Max zombie detected. Clearing... 