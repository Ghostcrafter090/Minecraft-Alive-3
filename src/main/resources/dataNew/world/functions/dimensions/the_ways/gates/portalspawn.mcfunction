
function world:dimensions/the_ways/gates/portalspawn.0/0
execute as @e[tag=!notick,tag=waygate,tag=!loaded] at @s if entity @e[tag=!notick,tag=waygate,tag=loaded,distance=0..300] run kill @s
execute unless entity @e[tag=waygatecen,type=marker,tag=!new] run summon marker 0 100 0 {Tags:['waygatecen','waygate'],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,CustomName:'{"text":"waygatecen"}'}
execute as @a at @s as @e[tag=waygate,tag=!loaded,type=marker,tag=!new,distance=0..300] at @s run summon marker ~ 100 ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,CustomName:'{"text":"waygate"}'}
execute as @e[name=waygate,tag=!loaded,type=marker,tag=!new] at @s run spreadplayers ~ ~ 10 250 false @s
execute as @e[name=waygate,tag=!loaded,type=marker] at @s run function world:dimensions/the_ways/gates/spawn
execute as @e[name=waygate,tag=loaded,tag=!loadedways,type=marker] run function world:dimensions/the_ways/gates/portalspawn.0/6
execute as @e[name=waygate,tag=!loaded,type=marker] run tag @s add loaded
scoreboard players set @e[tag=dmain,type=marker] seed1 300000
execute as @a run function world:dimensions/the_ways/gates/portalspawn.0/9