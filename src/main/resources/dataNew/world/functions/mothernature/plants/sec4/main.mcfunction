
execute as @a[scores={regulate=0..0}] at @e[tag=!notick,tag=decayPoint] run fill ~ ~-1 ~ ~ ~-1 ~ gravel replace black_concrete_powder
scoreboard players add @e[tag=dmain] td 1
execute at @e[tag=decayPoint] if block ~ ~-1 ~ minecraft:oak_leaves run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treeo"}',Tags:["mina"]}
execute as @e[name=treeo] if entity @e[tag=dmain,scores={td=0..45}] run data merge entity @s {CustomName:'{"text":"treeplo"}',Tags:["mina"]}
scoreboard players add @e[name=treeplo] td 1
execute as @e[name=treeplo,scores={td=1..1}] at @s run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treeplto"}',Tags:["mina"]}
execute as @e[name=treeplo] at @s run spreadplayers ~ ~ 0 15 false @e[name=treeplto]
execute as @e[name=treeplo,scores={td=3..}] at @s run kill @e[name=treeplto,distance=0..15]
execute as @e[name=treeplo,scores={td=4..}] run kill @s
execute at @e[tag=decayPoint] if block ~ ~-1 ~ minecraft:dark_oak_leaves run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treed"}',Tags:["mina"]}
execute as @e[name=treed] if entity @e[tag=dmain,scores={td=0..45}] run data merge entity @s {CustomName:'{"text":"treepld"}',Tags:["mina"]}
scoreboard players add @e[name=treepld] td 1
execute as @e[name=treepld,scores={td=1..1}] at @s run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treepltd"}',Tags:["mina"]}
execute as @e[name=treepld] at @s run spreadplayers ~ ~ 0 15 false @e[name=treepltd]
execute as @e[name=treepld,scores={td=3..}] at @s run kill @e[name=treepltd,distance=0..15]
execute as @e[name=treepld,scores={td=4..}] run kill @s
execute at @e[tag=decayPoint] if block ~ ~-1 ~ minecraft:jungle_leaves run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treej"}',Tags:["mina"]}
execute as @e[name=treej] if entity @e[tag=dmain,scores={td=0..45}] run data merge entity @s {CustomName:'{"text":"treeplj"}',Tags:["mina"]}
scoreboard players add @e[name=treeplj] td 1
execute as @e[name=treeplj,scores={td=1..1}] at @s run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treepltj"}',Tags:["mina"]}
execute as @e[name=treeplj] at @s run spreadplayers ~ ~ 0 15 false @e[name=treepltj]
execute as @e[name=treeplj,scores={td=3..}] at @s run kill @e[name=treepltj,distance=0..15]
execute as @e[name=treeplj,scores={td=4..}] run kill @s
execute at @e[tag=decayPoint] if block ~ ~-1 ~ minecraft:birch_leaves run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treeb"}',Tags:["mina"]}
execute as @e[name=treeb] if entity @e[tag=dmain,scores={td=0..45}] run data merge entity @s {CustomName:'{"text":"treeplb"}',Tags:["mina"]}
scoreboard players add @e[name=treeplb] td 1
execute as @e[name=treeplb,scores={td=1..1}] at @s run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treepltb"}',Tags:["mina"]}
execute as @e[name=treeplb] at @s run spreadplayers ~ ~ 0 15 false @e[name=treepltb]
execute as @e[name=treeplb,scores={td=3..}] at @s run kill @e[name=treepltb,distance=0..15]
execute as @e[name=treeplb,scores={td=4..}] run kill @s
execute at @e[tag=decayPoint] if block ~ ~-1 ~ minecraft:spruce_leaves run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"trees"}',Tags:["mina"]}
execute as @e[name=trees] if entity @e[tag=dmain,scores={td=0..45}] run data merge entity @s {CustomName:'{"text":"treepls"}',Tags:["mina"]}
scoreboard players add @e[name=treepls] td 1
execute as @e[name=treepls,scores={td=1..1}] at @s run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treeplts"}',Tags:["mina"]}
execute as @e[name=treepls] at @s run spreadplayers ~ ~ 0 15 false @e[name=treeplts]
execute as @e[name=treepls,scores={td=3..}] at @s run kill @e[name=treeplts,distance=0..15]
execute as @e[name=treepls,scores={td=4..}] run kill @s
execute at @e[tag=decayPoint] if block ~ ~-1 ~ minecraft:acacia_leaves run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treea"}',Tags:["mina"]}
execute as @e[name=treea] if entity @e[tag=dmain,scores={td=0..45}] run data merge entity @s {CustomName:'{"text":"treepla"}',Tags:["mina"]}
scoreboard players add @e[name=treepla] td 1
execute as @e[name=treepla,scores={td=1..1}] at @s run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treeplta"}',Tags:["mina"]}
execute as @e[name=treepla] at @s run spreadplayers ~ ~ 0 15 false @e[name=treeplta]
execute as @e[name=treepla,scores={td=3..}] at @s run kill @e[name=treeplta,distance=0..15]
execute as @e[name=treepla,scores={td=4..}] run kill @s
execute as @e[name=treeplta] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ acacia_sapling replace
execute as @e[name=treepltb] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ birch_sapling replace
execute as @e[name=treepltd] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ dark_oak_sapling replace
execute as @e[name=treepltj] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ jungle_sapling replace
execute as @e[name=treeplto] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ oak_sapling replace
execute as @e[name=treeplts] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ spruce_sapling replace
execute at @e[tag=decayPoint] run function world:mothernature/plants/sec4/main.0/50
execute as @e[name=tree] if entity @e[tag=dmain,type=marker,scores={td=46..50}] run data merge entity @s {CustomName:'{"text":"treepl"}',Tags:["mina"]}
scoreboard players add @e[name=treepl] td 1
execute as @e[name=treepl,scores={td=1..1}] at @s run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treeplt"}',Tags:["mina"]}
execute as @e[name=treepl] at @s run spreadplayers ~ ~ 0 15 false @e[name=treeplt]
execute as @e[name=treepl,scores={td=3..}] at @s run kill @e[name=treeplt,distance=0..15]
execute as @e[name=treepl,scores={td=4..}] run kill @s
execute at @e[name=treepl] run function world:mothernature/plants/sec4/main.0/57
execute as @e[tag=decayPoint] at @s if block ~ ~-1 ~ grass_block run function world:mothernature/plants/sec4/grassblock
scoreboard players add @e[tag=decayPoint] td 1
execute if entity @e[tag=decayPoint,scores={td=15..}] run scoreboard players set @e[tag=decayPoint] td 0
function world:mothernature/plants/sec4/main.0/61
execute as @e[tag=dmain,scores={td=50..}] run scoreboard players set @s td 0