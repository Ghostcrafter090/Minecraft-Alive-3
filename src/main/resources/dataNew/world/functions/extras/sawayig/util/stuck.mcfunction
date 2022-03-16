
execute if entity @s[tag=!nostuck] at @s if block ~1 ~ ~ soul_torch if block ~-1 ~ ~ soul_torch if block ~ ~ ~1 soul_torch if block ~ ~ ~-1 soul_torch if entity @s[tag=!stuck] run tag @s add stuck 
execute if entity @s[tag=stuck] run function world:extras/sawayig/util/stuck.0/1
execute if entity @s[tag=nostuck,tag=stuck] run function world:extras/sawayig/util/stuck.0/2
execute if entity @s[tag=stuck] run function world:extras/sawayig/util/stuck.0/3
execute if entity @s[tag=nostuck] run tag @s remove stuck
execute if entity @s[tag=stuck] run function world:extras/sawayig/util/stuck.0/5
execute unless entity @s[tag=stuck] run effect clear @s slowness