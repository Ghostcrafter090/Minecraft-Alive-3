
scoreboard objectives add endermite_ent dummy 
scoreboard objectives add endermite_max dummy 
execute unless entity @e[name=dmain,scores={endermite_max=0..}] run scoreboard players set @e[name=dmain] endermite_max 50 
execute store result score @e[name=dmain] endermite_ent if entity @e[type=endermite] 
scoreboard players operation @e[name=dmain] endermite_ent -= @e[name=dmain] endermite_max 
execute if entity @e[name=dmain,scores={endermite_ent=1..}] run kill @e[type=endermite,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={endermite_ent=1..}] run say [Minecraft Alive] - Max endermite detected. Clearing... 