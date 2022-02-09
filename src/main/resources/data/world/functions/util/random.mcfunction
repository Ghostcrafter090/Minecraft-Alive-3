
function world:util/random_/0
execute as @e[limit=1,sort=random] run function world:util/random_/1
function world:util/random_/2
execute as @a run function world:util/random_/3
scoreboard players set @e[name=dmain,type=marker] randMultVal 10
execute as @a run scoreboard players operation @s random10 %= @e[name=dmain,type=marker] randMultVal
scoreboard players set @e[name=dmain,type=marker] randMultVal 50
execute as @a run scoreboard players operation @s random50 %= @e[name=dmain,type=marker] randMultVal
scoreboard players set @e[name=dmain,type=marker] randMultVal 100
execute as @a run scoreboard players operation @s random100 %= @e[name=dmain,type=marker] randMultVal