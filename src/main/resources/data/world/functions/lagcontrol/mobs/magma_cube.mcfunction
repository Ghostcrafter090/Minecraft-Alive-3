
scoreboard objectives add magma_cube_ent dummy 
scoreboard objectives add magma_cube_max dummy 
execute unless entity @e[name=dmain,scores={magma_cube_max=0..}] run scoreboard players set @e[name=dmain] magma_cube_max 50 
execute store result score @e[name=dmain] magma_cube_ent if entity @e[type=magma_cube] 
scoreboard players operation @e[name=dmain] magma_cube_ent -= @e[name=dmain] magma_cube_max 
execute if entity @e[name=dmain,scores={magma_cube_ent=1..}] run kill @e[type=magma_cube,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={magma_cube_ent=1..}] run say [Minecraft Alive] - Max magma_cube detected. Clearing... 