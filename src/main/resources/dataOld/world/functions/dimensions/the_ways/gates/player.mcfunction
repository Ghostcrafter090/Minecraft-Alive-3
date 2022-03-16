execute store result score @s posX run data get entity @s Pos[0]
execute store result score @s posZ run data get entity @s Pos[2]
scoreboard players set @s posN 10
scoreboard players operation @s posX /= @s posN
scoreboard players operation @s posZ /= @s posN
scoreboard players operation @e[name=dmain,type=marker] sin0 = @s posX
function world:util/sin
scoreboard players operation @s xSin = @e[name=dmain,type=marker] sin
scoreboard players operation @e[name=dmain,type=marker] sin0 = @s posZ
function world:util/sin
scoreboard players operation @s zSin = @e[name=dmain,type=marker] sin
execute if entity @s[scores={posX=..-995}] if entity @s[scores={posZ=..-995}] if entity @s[tag=!spawnportal] at @s unless entity @e[name=waygate,type=marker,distance=0..500] run 