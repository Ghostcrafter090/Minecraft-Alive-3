
scoreboard objectives add slime_ent dummy 
scoreboard objectives add slime_max dummy 
execute unless entity @e[name=dmain,scores={slime_max=0..}] run scoreboard players set @e[name=dmain] slime_max 50 
execute store result score @e[name=dmain] slime_ent if entity @e[type=slime] 
scoreboard players operation @e[name=dmain] slime_ent -= @e[name=dmain] slime_max 
execute if entity @e[name=dmain,scores={slime_ent=1..}] run kill @e[type=slime,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={slime_ent=1..}] run say [Minecraft Alive] - Max slime detected. Clearing... 