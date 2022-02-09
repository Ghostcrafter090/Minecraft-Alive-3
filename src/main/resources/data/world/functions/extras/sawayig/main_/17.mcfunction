
execute at @s if block ~1 ~ ~ soul_torch if block ~-1 ~ ~ soul_torch if block ~ ~ ~1 soul_torch if block ~ ~ ~-1 soul_torch if entity @s[tag=!stuck] run tag @s add stuck 
execute if entity @s[tag=stuck] at @s unless block ~1 ~ ~ soul_torch run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 9 0.01
execute if entity @s[tag=stuck] at @s unless block ~1 ~ ~ soul_torch run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 9 0.01
execute if entity @s[tag=stuck] at @s unless block ~1 ~ ~ soul_torch run particle minecraft:soul_fire_flame ~ ~ ~ 0 2 0 0.1 1000 force
execute if entity @s[tag=stuck] at @s unless block ~-1 ~ ~ soul_torch run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 9 0.01
execute if entity @s[tag=stuck] at @s unless block ~-1 ~ ~ soul_torch run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 9 0.01
execute if entity @s[tag=stuck] at @s unless block ~-1 ~ ~ soul_torch run particle minecraft:soul_fire_flame ~ ~ ~ 0 2 0 0.1 1000 force
execute if entity @s[tag=stuck] at @s unless block ~ ~ ~1 soul_torch run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 9 0.01
execute if entity @s[tag=stuck] at @s unless block ~ ~ ~1 soul_torch run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 9 0.01
execute if entity @s[tag=stuck] at @s unless block ~ ~ ~1 soul_torch run particle minecraft:soul_fire_flame ~ ~ ~ 0 2 0 0.1 1000 force
execute if entity @s[tag=stuck] at @s unless block ~ ~ ~-1 soul_torch run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 9 0.01
execute if entity @s[tag=stuck] at @s unless block ~ ~ ~-1 soul_torch run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 9 0.01
execute if entity @s[tag=stuck] at @s unless block ~ ~ ~-1 soul_torch run particle minecraft:soul_fire_flame ~ ~ ~ 0 2 0 0.1 1000 force
execute if entity @s[tag=stuck] at @s unless block ~1 ~ ~ soul_torch run tag @s remove stuck
execute if entity @s[tag=stuck] at @s unless block ~-1 ~ ~ soul_torch run tag @s remove stuck
execute if entity @s[tag=stuck] at @s unless block ~ ~ ~1 soul_torch run tag @s remove stuck
execute if entity @s[tag=stuck] at @s unless block ~ ~ ~-1 soul_torch run tag @s remove stuck
execute if entity @s[tag=stuck] run effect give @s slowness 100000 255 true
execute if entity @s[tag=stuck] if entity @s[nbt={NoAI:1b}] run data modify entity @s NoAI set value 0b
execute unless entity @s[tag=stuck] run effect clear @s slowness