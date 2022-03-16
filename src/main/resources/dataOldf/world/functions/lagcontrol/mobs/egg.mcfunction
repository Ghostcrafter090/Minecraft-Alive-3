
scoreboard objectives add egg_ent dummy 
scoreboard objectives add egg_max dummy 
execute unless entity @e[name=dmain,scores={egg_max=0..}] run scoreboard players set @e[name=dmain] egg_max 50 
execute store result score @e[name=dmain] egg_ent if entity @e[type=egg] 
scoreboard players operation @e[name=dmain] egg_ent -= @e[name=dmain] egg_max 
execute if entity @e[name=dmain,scores={egg_ent=1..}] run kill @e[type=egg,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={egg_ent=1..}] run say [Minecraft Alive] - Max egg detected. Clearing... 