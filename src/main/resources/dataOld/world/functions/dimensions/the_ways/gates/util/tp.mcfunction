execute store result score @s posX run data get entity @s Pos[0]
execute store result score @s posZ run data get entity @s Pos[2]
execute if entity @s[tag=x] run scoreboard players operation @s posX += @e[name=dmain,type=marker,limit=1] seed
execute if entity @s[tag=x] run scoreboard players operation @s posX += @e[name=dmain,type=marker,limit=1] seed
execute if entity @s[tag=-x] run scoreboard players operation @s posX -= @e[name=dmain,type=marker,limit=1] seed
execute if entity @s[tag=-x] run scoreboard players operation @s posX -= @e[name=dmain,type=marker,limit=1] seed
execute if entity @s[tag=z] run scoreboard players operation @s posZ += @e[name=dmain,type=marker,limit=1] seed
execute if entity @s[tag=z] run scoreboard players operation @s posZ += @e[name=dmain,type=marker,limit=1] seed
execute if entity @s[tag=-z] run scoreboard players operation @s posZ -= @e[name=dmain,type=marker,limit=1] seed
execute if entity @s[tag=-z] run scoreboard players operation @s posZ -= @e[name=dmain,type=marker,limit=1] seed
tag @s remove new
execute store result entity @s Pos[0] double 1 run scoreboard players get @s posX
execute store result entity @s Pos[2] double 1 run scoreboard players get @s posZ