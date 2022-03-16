scoreboard players add @a path 1
execute if entity @a[scores={path=25..25}] as @e[type=!item,type=!falling_block] unless entity @s[type=marker] at @s run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace grass_block
execute if entity @a[scores={path=24..24}] as @e[type=!item,type=!falling_block] unless entity @s[type=marker] at @s run fill ~ ~-1 ~ ~ ~-1 ~ farmland replace dirt
execute if entity @a[scores={path=26..}] run scoreboard players set @a path 0