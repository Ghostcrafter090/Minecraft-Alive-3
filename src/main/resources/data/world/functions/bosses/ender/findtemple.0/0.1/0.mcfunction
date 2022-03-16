






execute at @s if block ~1 ~ ~ minecraft:purple_candle if block ~-1 ~ ~ minecraft:purple_candle if block ~ ~ ~1 minecraft:purple_candle if block ~ ~ ~-1 minecraft:purple_candle run particle reverse_portal ~ ~ ~ 0 0 0 1 100 force
execute at @s if block ~1 ~ ~ minecraft:purple_candle if block ~-1 ~ ~ minecraft:purple_candle if block ~ ~ ~1 minecraft:purple_candle if block ~ ~ ~-1 minecraft:purple_candle run kill @e[tag=!notick,tag=temple]
execute at @s if block ~1 ~ ~ minecraft:purple_candle if block ~-1 ~ ~ minecraft:purple_candle if block ~ ~ ~1 minecraft:purple_candle if block ~ ~ ~-1 minecraft:purple_candle run summon marker ~ ~ ~ {Tags:['templeFindball','temple'],Invulnerable:1b,NoAI:1b}
execute at @s if block ~1 ~ ~ minecraft:purple_candle if block ~-1 ~ ~ minecraft:purple_candle if block ~ ~ ~1 minecraft:purple_candle if block ~ ~ ~-1 minecraft:purple_candle run summon marker ~ ~ ~ {Tags:['templeFind','temple'],Invulnerable:1b,NoAI:1b}
execute at @s if block ~1 ~ ~ minecraft:purple_candle if block ~-1 ~ ~ minecraft:purple_candle if block ~ ~ ~1 minecraft:purple_candle if block ~ ~ ~-1 minecraft:purple_candle run playsound minecraft:block.amethyst_cluster.place master @a ~ ~ ~ 1 0.1
execute at @s if block ~1 ~ ~ minecraft:purple_candle if block ~-1 ~ ~ minecraft:purple_candle if block ~ ~ ~1 minecraft:purple_candle if block ~ ~ ~-1 minecraft:purple_candle run tag @s add spell