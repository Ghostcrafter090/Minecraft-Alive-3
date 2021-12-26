execute as @e[tag=blight,limit=1,sort=random] at @s as @e[distance=0..15] at @s unless entity @s[tag=blight] unless entity @s[type=marker] unless entity @s[tag=sawayig] unless entity @s[scores={airtic=1..1}] run function world:blight/infect
execute at @e[tag=blight,limit=1,sort=random] unless block ~ ~-1 ~ minecraft:mycelium run fill ~1 ~10 ~1 ~-1 ~-2 ~-1 minecraft:dead_bubble_coral[waterlogged=false] replace fern
execute at @e[tag=blight,limit=1,sort=random] unless block ~ ~-1 ~ minecraft:mycelium run fill ~1 ~10 ~1 ~-1 ~-2 ~-1 minecraft:dead_bubble_coral[waterlogged=false] replace minecraft:dead_bubble_coral[waterlogged=true]
execute at @e[tag=blight,limit=1,sort=random] unless block ~ ~-1 ~ minecraft:mycelium run fill ~1 ~10 ~1 ~-1 ~-1 ~-1 minecraft:dead_fire_coral[waterlogged=false] replace large_fern
execute at @e[tag=blight,limit=1,sort=random] unless block ~ ~-1 ~ minecraft:mycelium run fill ~1 ~10 ~1 ~-1 ~-2 ~-1 dead_bubble_coral[waterlogged=false] replace #flowers
execute at @e[tag=blight,limit=1,sort=random] unless block ~ ~-1 ~ minecraft:mycelium run fill ~1 ~10 ~1 ~-1 ~-2 ~-1 minecraft:dead_bubble_coral[waterlogged=false] replace fern
execute at @e[tag=blight,limit=1,sort=random] unless block ~ ~-1 ~ minecraft:mycelium run fill ~1 ~10 ~1 ~-1 ~-2 ~-1 dead_fire_coral_fan[waterlogged=false] replace #leaves
execute at @e[tag=blight,limit=1,sort=random] unless block ~ ~-1 ~ minecraft:mycelium run fill ~1 ~10 ~1 ~-1 ~-2 ~-1 dead_fire_coral_block replace #logs
execute at @e[tag=blight,limit=1,sort=random] unless block ~ ~-1 ~ minecraft:mycelium run fill ~1 ~10 ~1 ~-1 ~-2 ~-1 minecraft:dead_horn_coral[waterlogged=false] replace grass
execute at @e[tag=blight,limit=1,sort=random] unless block ~ ~-1 ~ minecraft:mycelium run fill ~1 ~10 ~1 ~-1 ~-2 ~-1 minecraft:mycelium replace grass_block
execute at @e[tag=blight,limit=1,sort=random] unless block ~ ~-1 ~ minecraft:mycelium run fill ~1 ~10 ~1 ~-1 ~-2 ~-1 minecraft:mycelium replace podzol

scoreboard objectives add randoblight dummy
scoreboard objectives add rblight dummy
scoreboard players add @e[name=derp] randoblight 1

execute at @e[name=derp,scores={randoblight=1..1}] if block ~ ~-1 ~ mycelium run setblock ~ ~ ~ bamboo_sapling replace
execute at @e[name=derp,scores={randoblight=2..2}] if block ~ ~-1 ~ mycelium run setblock ~ ~ ~ crimson_fungus replace
execute at @e[name=derp,scores={randoblight=3..3}] if block ~ ~-1 ~ mycelium run setblock ~ ~ ~ warped_fungus replace
execute at @e[name=derp,scores={randoblight=4..4}] if block ~ ~-1 ~ mycelium run setblock ~ ~ ~ twisting_vines replace
execute at @e[name=derp,scores={randoblight=5..5}] if block ~ ~-1 ~ mycelium run setblock ~ ~ ~ sea_pickle replace

execute at @e[name=derp,scores={randoblight=5..5}] if block ~ ~-1 ~ mycelium run setblock ~ ~-2 ~ end_stone replace
execute at @e[name=derp,scores={randoblight=5..5}] if block ~ ~-1 ~ mycelium run setblock ~ ~-1 ~ podzol replace
execute at @e[name=derp,scores={randoblight=5..5}] if block ~ ~-1 ~ podzol if block ~ ~-2 ~ end_stone run setblock ~ ~ ~ jungle_sapling replace

execute at @e[name=derp,scores={randoblight=6..6}] if block ~ ~-1 ~ mycelium run setblock ~ ~-1 ~ warped_nylium replace
execute at @e[name=derp,scores={randoblight=7..7}] if block ~ ~-1 ~ mycelium run setblock ~ ~-1 ~ crimson_nylium replace

execute at @e[name=derp,scores={randoblight=8..8}] if block ~ ~-1 ~ crimson_nylium run setblock ~ ~-1 ~ mycelium replace
execute at @e[name=derp,scores={randoblight=9..9}] if block ~ ~-1 ~ warped_nylium run setblock ~ ~-1 ~ mycelium replace

execute as @e[name=derp,scores={randoblight=9..9}] run scoreboard players set @s randoblight 0

execute as @e[name=derp] at @s if block ~ ~-2 ~ jungle_log store success score @s rblight run fill ~5 ~-20 ~5 ~-5 ~ ~-5 bedrock replace end_stone
execute as @e[name=derp] at @s if block ~ ~-2 ~ jungle_log store success score @s rblight run fill ~5 ~-20 ~5 ~-5 ~ ~-5 end_stone replace bedrock
execute if entity @e[name=derp,scores={rblight=1..1}] as @e[name=blight,limit=1] at @e[name=derp] run function world:blight/infect
scoreboard players set @e[name=derp] rblight 0

execute at @e[name=derp] run fill ~ ~-3 ~ ~ ~ ~ fire replace dead_fire_coral_block
execute at @e[name=derp] run fill ~ ~-3 ~ ~ ~ ~ fire replace dead_fire_coral_fan

execute as @a at @s if block ~ ~-1 ~ mycelium run gamerule randomTickSpeed 300
execute as @a at @s unless block ~ ~-1 ~ mycelium run gamerule randomTickSpeed 3
execute at @e[tag=blight] run particle minecraft:warped_spore ~ ~ ~ 10 10 10 0.1 100 force
execute at @e[tag=blight] run particle minecraft:crimson_spore ~ ~ ~ 10 10 10 0.1 100 force

