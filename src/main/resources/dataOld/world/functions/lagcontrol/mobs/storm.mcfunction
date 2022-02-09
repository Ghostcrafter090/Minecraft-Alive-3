
scoreboard objectives add storm_ent dummy 
scoreboard objectives add storm_max dummy 
execute unless entity @e[name=dmain,scores={storm_max=0..}] run scoreboard players set @e[name=dmain] storm_max 20 
execute store result score @e[name=dmain] storm_ent if entity @e[name=storm] 
scoreboard players operation @e[name=dmain] storm_ent -= @e[name=dmain] storm_max 
execute if entity @e[name=dmain,scores={storm_ent=1..}] run kill @e[name=storm,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={storm_ent=1..}] run say [Minecraft Alive] - Max Machin Shin activity detected. Clearing...