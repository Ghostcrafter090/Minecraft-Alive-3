
function minecraft_alive_strpd:data/world/functions/extras/cubeentity/magma/grow_/0
execute as @e[type=magma_cube] run function minecraft_alive_strpd:data/world/functions/extras/cubeentity/magma/grow_/1
execute as @e[type=magma_cube,scores={slimeTick=100..}] run function minecraft_alive_strpd:data/world/functions/extras/cubeentity/magma/grow_/2
execute as @e[type=magma_cube] at @s unless block ~ ~ ~ lava run scoreboard players add @s slimeNegate 1
execute as @e[type=magma_cube,scores={slimeNegate=1000..}] run function minecraft_alive_strpd:data/world/functions/extras/cubeentity/magma/grow_/4
execute as @e[type=magma_cube] run function minecraft_alive_strpd:data/world/functions/extras/cubeentity/magma/grow_/5