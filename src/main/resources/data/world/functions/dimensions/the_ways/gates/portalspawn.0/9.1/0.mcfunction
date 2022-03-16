

execute if entity @e[tag=!notick,tag=waygate,tag=!loaded,type=marker,tag=!new,distance=0..300] store result score @e[tag=!notick,tag=dmain,type=marker] seed run seed
execute if entity @e[tag=!notick,tag=waygate,tag=!loaded,type=marker,tag=!new,distance=0..300] as @e[tag=!notick,tag=dmain,type=marker] run scoreboard players operation @s seed /= @s seed1
execute as @e[tag=!notick,tag=waygate,tag=!loaded,type=marker,tag=!new,distance=0..300] at @s run summon marker ~ 100 ~ {Tags:['waygate','x','new'],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,CustomName:'{"text":"waygatecen"}'}
execute as @e[tag=!notick,tag=waygate,tag=!loaded,type=marker,tag=!new,distance=0..300] at @s run summon marker ~ 100 ~ {Tags:['waygate','-x','new'],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,CustomName:'{"text":"waygatecen"}'}
execute as @e[tag=!notick,tag=waygate,tag=!loaded,type=marker,tag=!new,distance=0..300] at @s run summon marker ~ 100 ~ {Tags:['waygate','z','new'],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,CustomName:'{"text":"waygatecen"}'}
execute as @e[tag=!notick,tag=waygate,tag=!loaded,type=marker,tag=!new,distance=0..300] at @s run summon marker ~ 100 ~ {Tags:['waygate','-z','new'],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,CustomName:'{"text":"waygatecen"}'}
execute as @e[tag=!notick,tag=waygate,tag=!loaded,tag=!new,type=marker,distance=0..300] run tag @s add loaded
execute as @e[tag=!notick,tag=waygate,tag=!loaded,tag=new,distance=0..300] run function world:dimensions/the_ways/gates/util/tp