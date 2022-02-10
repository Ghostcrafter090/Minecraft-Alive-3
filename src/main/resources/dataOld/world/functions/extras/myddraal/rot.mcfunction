execute as @s at @s if score @s rot0 < @s rot2 run tp @s ~ ~ ~ ~-0.5 ~
execute as @s at @s if score @s rot1 < @s rot3 run tp @s ~ ~ ~ ~ ~-0.5
execute as @s at @s if score @s rot0 > @s rot2 run tp @s ~ ~ ~ ~0.5 ~
execute as @s at @s if score @s rot1 > @s rot3 run tp @s ~ ~ ~ ~ ~0.5