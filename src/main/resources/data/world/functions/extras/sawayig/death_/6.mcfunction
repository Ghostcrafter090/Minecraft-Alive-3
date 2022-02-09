
execute at @s run particle minecraft:large_smoke ~ ~ ~ 1 1 1 1 320 force
execute at @s run particle minecraft:ash ~ ~ ~ 10 10 10 0.01 500 force
execute at @s run scoreboard players set @e[distance=0..40,tag=!sawayig] healthb 300