# Define
scoreboard objectives add createwaygate dummy
scoreboard objectives add waygatedone dummy
scoreboard objectives add waygatemake dummy

scoreboard objectives add posX dummy
scoreboard objectives add posZ dummy
scoreboard objectives add seed dummy
scoreboard objectives add seed1 dummy
scoreboard players set @e[name=dmain,type=marker] seed1 200000
scoreboard objectives add xSin dummy
scoreboard objectives add zSin dummy

# Main
# execute as @e[type=villager,sort=random,limit=1] at @s unless entity @e[name=waygate,type=marker,distance=0..350] run summon marker ~ 230 ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,CustomName:'{"text":"waygate"}'}
# execute as @e[name=waygate,type=marker,sort=random,limit=1] unless entity @s[scores={createwaygate=1..1}] at @s run spreadplayers ~ ~ 50 249 false @s
# execute as @e[name=waygate,type=marker,sort=random,limit=1] unless entity @s[scores={createwaygate=1..1}] at @s unless block ~ ~-25 ~ air run scoreboard players set @s createwaygate 1
# execute as @e[name=waygate,type=marker,sort=random,limit=1] unless entity @s[scores={waygatedone=1..1}] at @s unless block ~ ~-25 ~ air run function world:dimensions/the_ways/gates/waygatemacro
# execute as @e[name=waygate,type=marker,sort=random,limit=1] unless entity @s[scores={waygatedone=1..1}] if entity @s[scores={waygatemake=115..}] run scoreboard players set @s waygatedone 1

# Main
# execute as @a[scores={atic=1..1}] run function world:dimensions/the_ways/gates/player
execute as @e[tag=waygate,tag=!loaded] at @s if entity @e[tag=waygate,tag=loaded,distance=0..300] run kill @s
execute unless entity @e[tag=waygatecen,type=marker,tag=!new] run summon marker 0 100 0 {Tags:['waygatecen','waygate'],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,CustomName:'{"text":"waygatecen"}'}
execute as @a at @s as @e[tag=waygate,tag=!loaded,type=marker,tag=!new,distance=0..300] at @s run summon marker ~ 100 ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,CustomName:'{"text":"waygate"}'}
execute as @e[name=waygate,tag=!loaded,type=marker,tag=!new] at @s run spreadplayers ~ ~ 10 250 false @s
execute as @e[name=waygate,tag=!loaded,type=marker] at @s run function world:dimensions/the_ways/gates/spawn
execute as @e[name=waygate,tag=loaded,tag=!loadedways,type=marker] at @s run function world:dimensions/the_ways/gates/spawnin
execute as @e[name=waygate,tag=loaded,tag=!loadedways,type=marker] run tag @s add loadedways
execute as @e[name=waygate,tag=!loaded,type=marker] run tag @s add loaded
scoreboard players set @e[name=dmain,type=marker] seed1 300000
execute as @a at @s if entity @e[tag=waygate,tag=!loaded,type=marker,tag=!new,distance=0..300] store result score @e[name=dmain,type=marker] seed run seed
execute as @a at @s if entity @e[tag=waygate,tag=!loaded,type=marker,tag=!new,distance=0..300] as @e[name=dmain,type=marker] run scoreboard players operation @s seed /= @s seed1
execute as @a at @s as @e[tag=waygate,tag=!loaded,type=marker,tag=!new,distance=0..300] at @s run summon marker ~ 100 ~ {Tags:['waygate','x','new'],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,CustomName:'{"text":"waygatecen"}'}
execute as @a at @s as @e[tag=waygate,tag=!loaded,type=marker,tag=!new,distance=0..300] at @s run summon marker ~ 100 ~ {Tags:['waygate','-x','new'],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,CustomName:'{"text":"waygatecen"}'}
execute as @a at @s as @e[tag=waygate,tag=!loaded,type=marker,tag=!new,distance=0..300] at @s run summon marker ~ 100 ~ {Tags:['waygate','z','new'],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,CustomName:'{"text":"waygatecen"}'}
execute as @a at @s as @e[tag=waygate,tag=!loaded,type=marker,tag=!new,distance=0..300] at @s run summon marker ~ 100 ~ {Tags:['waygate','-z','new'],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,CustomName:'{"text":"waygatecen"}'}
execute as @a at @s as @e[tag=waygate,tag=!loaded,tag=!new,type=marker,distance=0..300] run tag @s add loaded
execute as @a at @s as @e[tag=waygate,tag=!loaded,tag=new,distance=0..300] run function world:dimensions/the_ways/gates/util/tp