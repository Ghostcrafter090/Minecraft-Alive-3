
function world:dimensions/the_ways/gates/portalspawnold.0/0
execute unless entity @e[tag=!notick,name=waygate,scores={waygatemake=0..114}] run scoreboard players add @a createwaygate 1
execute if entity @a[scores={createwaygate=2..2}] unless entity @e[name=waygate,scores={waygatemake=0..114}] as @e[name=waygate] at @s unless block ~ ~-1 ~ grass_block unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ gravel run scoreboard players set @a[scores={createwaygate=2..}] createwaygate 1
execute in minecraft:overworld as @a[distance=0..] at @s unless entity @e[name=waygate,distance=0..500] if entity @e[type=villager,distance=0..250] run scoreboard players set @s createwaygate 0
execute as @a[scores={createwaygate=0..0}] at @s run summon marker ~ 255 ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,CustomName:'{"text":"waygate"}'}
execute as @a[scores={createwaygate=1..1}] at @s as @e[name=waygate] unless entity @s[scores={waygatedone=1..1}] run spreadplayers ~ ~ 0 250 false @s
execute as @a[scores={createwaygate=2..2}] at @s as @e[name=waygate] unless entity @s[scores={waygatedone=1..1}] at @s run function world:dimensions/the_ways/gates/waygatemacro
execute as @a[scores={createwaygate=3..3}] at @s as @e[name=waygate] unless entity @s[scores={waygatedone=1..1}] run scoreboard players set @s waygatedone 1