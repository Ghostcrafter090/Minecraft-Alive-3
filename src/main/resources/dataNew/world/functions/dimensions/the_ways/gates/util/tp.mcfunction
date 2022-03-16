
execute store result score @s posX run data get entity @s Pos[0]
execute store result score @s posZ run data get entity @s Pos[2]
execute if entity @s[tag=x] run function world:dimensions/the_ways/gates/util/tp.0/2
execute if entity @s[tag=-x] run function world:dimensions/the_ways/gates/util/tp.0/3
execute if entity @s[tag=z] run function world:dimensions/the_ways/gates/util/tp.0/4
execute if entity @s[tag=-z] run function world:dimensions/the_ways/gates/util/tp.0/5
tag @s remove new
execute store result entity @s Pos[0] double 1 run scoreboard players get @s posX
execute store result entity @s Pos[2] double 1 run scoreboard players get @s posZ