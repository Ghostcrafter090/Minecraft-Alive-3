# Define
scoreboard objectives add slimeTick dummy
scoreboard objectives add slimeSize dummy
scoreboard objectives add slimeNegate dummy

# Main
execute as @e[type=magma_cube] at @s if block ~ ~ ~ lava store result score @s slimeSize run data get entity @s Size
execute as @e[type=magma_cube] at @s if block ~ ~ ~ lava run scoreboard players add @s slimeTick 1
execute as @e[type=magma_cube,scores={slimeTick=100..}] run scoreboard players add @s slimeSize 1
execute as @e[type=magma_cube,scores={slimeTick=100..}] store result entity @s Size int 1 run scoreboard players get @s slimeSize
execute as @e[type=magma_cube,scores={slimeTick=100..}] run scoreboard players set @s slimeTick 0
execute as @e[type=magma_cube] at @s unless block ~ ~ ~ lava run scoreboard players add @s slimeNegate 1
execute as @e[type=magma_cube,scores={slimeNegate=1000..}] run scoreboard players remove @s slimeSize 1
execute as @e[type=magma_cube,scores={slimeNegate=1000..}] store result entity @s Size int 1 run scoreboard players get @s slimeSize
execute as @e[type=magma_cube,scores={slimeNegate=1000..}] run scoreboard players set @s slimeNegate 0
execute as @e[type=magma_cube] at @s if block ~ ~-1 ~ snow run scoreboard players add @s slimeNegate 5
execute as @e[type=magma_cube] at @s if block ~ ~-1 ~ snow_block run scoreboard players add @s slimeNegate 5
execute as @e[type=magma_cube] at @s if block ~ ~-1 ~ #minecraft:ice run scoreboard players add @s slimeNegate 8
execute as @e[type=magma_cube] at @s if block ~ ~-1 ~ #minecraft:ice run effect give @s slowness 1 0
execute as @e[type=magma_cube] at @s if block ~ ~ ~ minecraft:water if entity @s[scores={slimeNegate=10..}] run scoreboard players add @s slimeNegate 50
execute as @e[type=magma_cube] at @s if block ~ ~ ~ minecraft:water if entity @s[scores={slimeNegate=10..}] run effect give @s resistance 5 2
execute as @e[type=magma_cube] at @s if block ~ ~ ~ minecraft:water if entity @s[scores={slimeNegate=10..}] run summon creeper ~ ~ ~ {CustomNameVisible:0b,ExplosionRadius:1b,PersistenceRequired:1b,CanPickUpLoot:1b,Fuse:2,ignited:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1}],Attributes:[{Name:generic.max_health,Base:1}]}



