# Define
scoreboard objectives add createwaygate dummy
scoreboard objectives add waygatedone dummy
scoreboard objectives add waygatemake dummy

# Main
execute as @e[type=villager,sort=random,limit=1] at @s unless entity @e[name=waygate,type=armor_stand,distance=0..250] run summon armor_stand ~ 255 ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,CustomName:'{"text":"waygate"}'}
execute as @e[name=waygate,type=armor_stand,sort=random,limit=1] unless entity @s[scores={createwaygate=1..1}] at @s run spreadplayers ~ ~ 50 249 false @s
execute as @e[name=waygate,type=armor_stand,sort=random,limit=1] unless entity @s[scores={createwaygate=1..1}] at @s run scoreboard players set @s createwaygate 1
execute as @e[name=waygate,type=armor_stand,sort=random,limit=1] unless entity @s[scores={waygatedone=1..1}] at @s run function world:dimensions/the_ways/gates/waygatemacro
execute as @e[name=waygate,type=armor_stand,sort=random,limit=1] unless entity @s[scores={waygatedone=1..1}] if entity @s[scores={waygatemake=115..}] run scoreboard players set @s waygatedone 1