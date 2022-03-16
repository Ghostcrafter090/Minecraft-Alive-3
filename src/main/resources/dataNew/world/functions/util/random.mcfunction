
function world:util/random.0/0
execute as @e[tag=!notick,limit=1,sort=random] run function world:util/random.0/1
function world:util/random.0/2
execute as @a run function world:util/random.0/3
scoreboard players set @e[tag=dmain,type=marker] randMultVal 10
execute as @a run scoreboard players operation @s random10 %= @e[tag=dmain,type=marker] randMultVal
scoreboard players set @e[tag=dmain,type=marker] randMultVal 50
execute as @a run scoreboard players operation @s random50 %= @e[tag=dmain,type=marker] randMultVal
scoreboard players set @e[tag=dmain,type=marker] randMultVal 100
execute as @a run scoreboard players operation @s random100 %= @e[tag=dmain,type=marker] randMultVal