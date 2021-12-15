
scoreboard objectives add machin_shin_ent dummy 
scoreboard objectives add machin_shin_max dummy 
execute unless entity @e[name=dmain,scores={machin_shin_max=0..}] run scoreboard players set @e[name=dmain] machin_shin_max 20 
execute store result score @e[name=dmain] machin_shin_ent if entity @e[name=machin_shin] 
scoreboard players operation @e[name=dmain] machin_shin_ent -= @e[name=dmain] machin_shin_max 
execute if entity @e[name=dmain,scores={machin_shin_ent=1..}] run kill @e[name=machin_shin,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={machin_shin_ent=1..}] run say [Minecraft Alive] - Max Machin Shin activity detected. Clearing...