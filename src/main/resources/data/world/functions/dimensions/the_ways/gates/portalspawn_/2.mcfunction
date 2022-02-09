
execute unless entity @s[scores={createwaygate=1..1}] at @s run spreadplayers ~ ~ 50 249 false @s
execute unless entity @s[scores={createwaygate=1..1}] at @s unless block ~ ~-25 ~ air run scoreboard players set @s createwaygate 1
execute unless entity @s[scores={waygatedone=1..1}] at @s unless block ~ ~-25 ~ air run function world:dimensions/the_ways/gates/waygatemacro
execute unless entity @s[scores={waygatedone=1..1}] if entity @s[scores={waygatemake=115..}] run scoreboard players set @s waygatedone 1