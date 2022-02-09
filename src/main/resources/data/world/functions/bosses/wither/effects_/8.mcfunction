
execute at @s run spreadplayers ~ ~ 20 200 false @s
execute at @s run fill ~4 ~-20 ~4 ~-5 ~-1 ~-4 netherrack replace air
execute at @s run fill ~2 ~ ~2 ~-3 ~ ~-2 netherrack replace air
execute at @s run fill ~1 ~1 ~ ~-2 ~1 ~ minecraft:obsidian replace air
execute at @s run fill ~-2 ~1 ~ ~-2 ~5 ~ minecraft:obsidian replace air
execute at @s run fill ~1 ~1 ~ ~1 ~5 ~ minecraft:obsidian replace air
execute at @s run fill ~1 ~5 ~ ~-2 ~5 ~ minecraft:obsidian replace air
execute at @s run scoreboard players set @s spawnTic 595
execute at @s run fill ~ ~2 ~ ~ ~2 ~ fire destroy
tag @s add finished