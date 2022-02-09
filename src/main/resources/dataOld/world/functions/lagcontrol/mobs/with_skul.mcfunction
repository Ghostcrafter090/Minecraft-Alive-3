
scoreboard objectives add with_skul_ent dummy 
scoreboard objectives add with_skul_max dummy 
execute unless entity @e[name=dmain,scores={with_skul_max=0..}] run scoreboard players set @e[name=dmain] with_skul_max 50 
execute store result score @e[name=dmain] with_skul_ent if entity @e[type=wither_skull] 
scoreboard players operation @e[name=dmain] with_skul_ent -= @e[name=dmain] with_skul_max 
execute if entity @e[name=dmain,scores={with_skul_ent=1..}] run kill @e[type=wither_skull,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={with_skul_ent=1..}] run say [Minecraft Alive] - Max wither_skull detected. Clearing... 