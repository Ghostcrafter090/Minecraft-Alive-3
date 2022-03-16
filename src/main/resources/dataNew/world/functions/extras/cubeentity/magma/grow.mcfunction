
function world:extras/cubeentity/magma/grow.0/0
execute as @e[tag=!notick,type=magma_cube] run function world:extras/cubeentity/magma/grow.0/1
execute as @e[type=magma_cube,scores={slimeTick=100..}] run function world:extras/cubeentity/magma/grow.0/2
execute as @e[type=magma_cube] at @s unless block ~ ~ ~ lava run scoreboard players add @s slimeNegate 1
execute as @e[type=magma_cube,scores={slimeNegate=1000..}] run function world:extras/cubeentity/magma/grow.0/4
execute as @e[type=magma_cube] run function world:extras/cubeentity/magma/grow.0/5