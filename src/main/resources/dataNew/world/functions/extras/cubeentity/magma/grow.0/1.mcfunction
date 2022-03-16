



execute at @s if block ~ ~ ~ lava store result score @s slimeSize run data get entity @s Size
execute at @s if block ~ ~ ~ lava run scoreboard players add @s slimeTick 1