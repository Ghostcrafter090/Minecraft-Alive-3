
execute at @s run particle minecraft:large_smoke ~ ~ ~ 1 1 1 1 640 force
execute at @s run particle minecraft:ash ~ ~ ~ 10 10 10 0.01 1000 force
execute at @s run scoreboard players set @e[distance=0..40,tag=!sawayig] healthb 300