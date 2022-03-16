
function world:extras/cubeentity/slime/grow.0/0
execute as @e[tag=!notick,type=slime] run function world:extras/cubeentity/slime/grow.0/1
execute as @e[type=slime,scores={slimeTick=100..}] run function world:extras/cubeentity/slime/grow.0/2
execute as @e[type=slime] at @s unless block ~ ~ ~ water run scoreboard players add @s slimeNegate 1
execute as @e[type=slime,scores={slimeNegate=1000..}] run function world:extras/cubeentity/slime/grow.0/4
execute as @e[type=slime] run function world:extras/cubeentity/slime/grow.0/5