
scoreboard objectives add enderman_ent dummy 
scoreboard objectives add enderman_max dummy 
execute unless entity @e[name=dmain,scores={enderman_max=0..}] run scoreboard players set @e[name=dmain] enderman_max 50 
execute store result score @e[name=dmain] enderman_ent if entity @e[type=enderman] 
scoreboard players operation @e[name=dmain] enderman_ent -= @e[name=dmain] enderman_max 
execute if entity @e[name=dmain,scores={enderman_ent=1..}] run kill @e[type=enderman,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={enderman_ent=1..}] run say [Minecraft Alive] - Max enderman detected. Clearing... 