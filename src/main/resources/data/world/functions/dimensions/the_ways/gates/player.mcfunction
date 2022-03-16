
execute store result score @s posX run data get entity @s Pos[0]
execute store result score @s posZ run data get entity @s Pos[2]
function world:dimensions/the_ways/gates/player.0/2
execute if entity @s[scores={posX=..-995}] if entity @s[scores={posZ=..-995}] if entity @s[tag=!spawnportal] at @s unless entity @e[tag=!notick,name=waygate,type=marker,distance=0..500] run 