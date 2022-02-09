
execute store result score @s creeperfire run data get entity @s Fire
execute if entity @s[scores={creeperfire=1..}] run data modify entity @s ignited set value 1b
execute at @s if block ~ ~-1 ~ redstone_wire unless block ~ ~-1 ~ redstone_wire[power=0] run data modify entity @s ignited set value 1b
execute at @s if block ~ ~-1 ~ redstone_wire unless block ~1 ~-1 ~ redstone_wire[power=0] run data modify entity @s ignited set value 1b
execute at @s if block ~ ~-1 ~ redstone_wire unless block ~ ~-1 ~1 redstone_wire[power=0] run data modify entity @s ignited set value 1b
execute at @s if block ~ ~-1 ~ redstone_wire unless block ~-1 ~-1 ~ redstone_wire[power=0] run data modify entity @s ignited set value 1b
execute at @s if block ~ ~-1 ~ redstone_wire unless block ~ ~-1 ~-1 redstone_wire[power=0] run data modify entity @s ignited set value 1b
execute at @s if block ~ ~-1 ~ redstone_wire unless block ~1 ~ ~ redstone_wire[power=0] run data modify entity @s ignited set value 1b
execute at @s if block ~ ~-1 ~ redstone_wire unless block ~ ~ ~1 redstone_wire[power=0] run data modify entity @s ignited set value 1b
execute at @s if block ~ ~-1 ~ redstone_wire unless block ~-1 ~ ~ redstone_wire[power=0] run data modify entity @s ignited set value 1b
execute at @s if block ~ ~-1 ~ redstone_wire unless block ~ ~ ~-1 redstone_wire[power=0] run data modify entity @s ignited set value 1b
execute at @s if block ~ ~-1 ~ magma_block run data modify entity @s ignited set value 1b
execute at @s if block ~ ~-1 ~ redstone_ore[lit=true] run data modify entity @s ignited set value 1b