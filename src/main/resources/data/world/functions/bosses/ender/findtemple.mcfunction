# Main
execute as @e[type=item,nbt={Item:{id:"mca:defunct_end_key",Count:1b}}] unless entity @s[tag=spell] at @s if block ~1 ~ ~ minecraft:purple_candle if block ~-1 ~ ~ minecraft:purple_candle if block ~ ~ ~1 minecraft:purple_candle if block ~ ~ ~-1 minecraft:purple_candle run particle reverse_portal ~ ~ ~ 0 0 0 1 100 force
execute as @e[type=item,nbt={Item:{id:"mca:defunct_end_key",Count:1b}}] unless entity @s[tag=spell] at @s if block ~1 ~ ~ minecraft:purple_candle if block ~-1 ~ ~ minecraft:purple_candle if block ~ ~ ~1 minecraft:purple_candle if block ~ ~ ~-1 minecraft:purple_candle run kill @e[tag=temple]
execute as @e[type=item,nbt={Item:{id:"mca:defunct_end_key",Count:1b}}] unless entity @s[tag=spell] at @s if block ~1 ~ ~ minecraft:purple_candle if block ~-1 ~ ~ minecraft:purple_candle if block ~ ~ ~1 minecraft:purple_candle if block ~ ~ ~-1 minecraft:purple_candle run summon marker ~ ~ ~ {Tags:['templeFindball','temple'],Invulnerable:1b,NoAI:1b}
execute as @e[type=item,nbt={Item:{id:"mca:defunct_end_key",Count:1b}}] unless entity @s[tag=spell] at @s if block ~1 ~ ~ minecraft:purple_candle if block ~-1 ~ ~ minecraft:purple_candle if block ~ ~ ~1 minecraft:purple_candle if block ~ ~ ~-1 minecraft:purple_candle run summon marker ~ ~ ~ {Tags:['templeFind','temple'],Invulnerable:1b,NoAI:1b}
execute as @e[type=item,nbt={Item:{id:"mca:defunct_end_key",Count:1b}}] unless entity @s[tag=spell] at @s if block ~1 ~ ~ minecraft:purple_candle if block ~-1 ~ ~ minecraft:purple_candle if block ~ ~ ~1 minecraft:purple_candle if block ~ ~ ~-1 minecraft:purple_candle run playsound minecraft:block.amethyst_cluster.place master @a ~ ~ ~ 1 0.1
execute as @e[type=item,nbt={Item:{id:"mca:defunct_end_key",Count:1b}}] unless entity @s[tag=spell] at @s if block ~1 ~ ~ minecraft:purple_candle if block ~-1 ~ ~ minecraft:purple_candle if block ~ ~ ~1 minecraft:purple_candle if block ~ ~ ~-1 minecraft:purple_candle run tag @s add spell

# Background
execute as @e[type=marker,tag=templeFindball] at @s store result score @s jTempleDistance run locate jungle_pyramid
execute as @e[type=marker,tag=templeFind] at @s store result score @s jTempleDistance run locate jungle_pyramid

# Motion
execute as @e[tag=templeFind] at @s run tp @e[tag=templeFindball] ^ ^ ^2 ~ ~
execute as @e[tag=templeFind] at @s facing entity @e[tag=templeFindball] feet if score @s jTempleDistance > @e[tag=templeFindball,limit=1,sort=nearest] jTempleDistance run tp @s ^ ^ ^0.65 ~ ~
execute as @e[tag=templeFind] at @s run tp @s ~ ~ ~ ~45 0
execute as @e[tag=templeFind] at @s if block ~ ~ ~ air run tp @s ~ ~-0.5 ~ ~ ~
execute as @e[tag=templeFind] at @s unless block ~ ~ ~ air run tp @s ~ ~0.5 ~ ~ ~

# Visuals
execute as @e[tag=templeFind,type=marker] at @s if entity @e[type=!marker,distance=0..2] run particle minecraft:dragon_breath ~ ~ ~ 1 1 1 0 100 force
execute at @e[tag=templeFind] run particle glow ~ ~1 ~ 0 0 0 0.01 20 force

# Audio
execute as @e[tag=templeFind,type=marker] at @s if entity @e[type=!marker,distance=0..2] run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 1 2
execute as @e[tag=templeFind,type=marker] at @s run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 1 0.1