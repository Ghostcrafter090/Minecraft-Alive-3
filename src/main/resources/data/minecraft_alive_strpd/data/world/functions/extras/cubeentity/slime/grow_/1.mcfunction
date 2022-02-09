
execute at @s if block ~ ~ ~ water store result score @s slimeSize run data get entity @s Size
execute at @s if block ~ ~ ~ water run scoreboard players add @s slimeTick 1