
scoreboard objectives add stray_ent dummy 
scoreboard objectives add stray_max dummy 
execute unless entity @e[name=dmain,scores={stray_max=0..}] run scoreboard players set @e[name=dmain] stray_max 50 
execute store result score @e[name=dmain] stray_ent if entity @e[type=stray] 
scoreboard players operation @e[name=dmain] stray_ent -= @e[name=dmain] stray_max 
execute if entity @e[name=dmain,scores={stray_ent=1..}] run kill @e[type=stray,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={stray_ent=1..}] run say [Minecraft Alive] - Max stray detected. Clearing... 