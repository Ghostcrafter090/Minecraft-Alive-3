execute as @a[scores={regulate=0..0}] at @e[name=derp] run fill ~ ~-1 ~ ~ ~-1 ~ gravel replace black_concrete_powder
scoreboard players add @e[name=dmain] td 1
execute at @e[name=derp] if block ~ ~-1 ~ minecraft:oak_leaves run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treeo"}',Tags:["mina"]}
execute as @e[name=treeo] if entity @e[name=dmain,scores={td=0..45}] run data merge entity @s {CustomName:'{"text":"treeplo"}',Tags:["mina"]}
scoreboard players add @e[name=treeplo] td 1
execute as @e[name=treeplo,scores={td=1..1}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treeplto"}',Tags:["mina"]}
execute as @e[name=treeplo] at @s run spreadplayers ~ ~ 0 15 false @e[name=treeplto]
execute as @e[name=treeplo,scores={td=3..}] at @s run kill @e[name=treeplto,distance=0..15]
execute as @e[name=treeplo,scores={td=4..}] run kill @s
execute at @e[name=derp] if block ~ ~-1 ~ minecraft:dark_oak_leaves run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treed"}',Tags:["mina"]}
execute as @e[name=treed] if entity @e[name=dmain,scores={td=0..45}] run data merge entity @s {CustomName:'{"text":"treepld"}',Tags:["mina"]}
scoreboard players add @e[name=treepld] td 1
execute as @e[name=treepld,scores={td=1..1}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treepltd"}',Tags:["mina"]}
execute as @e[name=treepld] at @s run spreadplayers ~ ~ 0 15 false @e[name=treepltd]
execute as @e[name=treepld,scores={td=3..}] at @s run kill @e[name=treepltd,distance=0..15]
execute as @e[name=treepld,scores={td=4..}] run kill @s
execute at @e[name=derp] if block ~ ~-1 ~ minecraft:jungle_leaves run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treej"}',Tags:["mina"]}
execute as @e[name=treej] if entity @e[name=dmain,scores={td=0..45}] run data merge entity @s {CustomName:'{"text":"treeplj"}',Tags:["mina"]}
scoreboard players add @e[name=treeplj] td 1
execute as @e[name=treeplj,scores={td=1..1}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treepltj"}',Tags:["mina"]}
execute as @e[name=treeplj] at @s run spreadplayers ~ ~ 0 15 false @e[name=treepltj]
execute as @e[name=treeplj,scores={td=3..}] at @s run kill @e[name=treepltj,distance=0..15]
execute as @e[name=treeplj,scores={td=4..}] run kill @s
execute at @e[name=derp] if block ~ ~-1 ~ minecraft:birch_leaves run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treeb"}',Tags:["mina"]}
execute as @e[name=treeb] if entity @e[name=dmain,scores={td=0..45}] run data merge entity @s {CustomName:'{"text":"treeplb"}',Tags:["mina"]}
scoreboard players add @e[name=treeplb] td 1
execute as @e[name=treeplb,scores={td=1..1}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treepltb"}',Tags:["mina"]}
execute as @e[name=treeplb] at @s run spreadplayers ~ ~ 0 15 false @e[name=treepltb]
execute as @e[name=treeplb,scores={td=3..}] at @s run kill @e[name=treepltb,distance=0..15]
execute as @e[name=treeplb,scores={td=4..}] run kill @s
execute at @e[name=derp] if block ~ ~-1 ~ minecraft:spruce_leaves run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"trees"}',Tags:["mina"]}
execute as @e[name=trees] if entity @e[name=dmain,scores={td=0..45}] run data merge entity @s {CustomName:'{"text":"treepls"}',Tags:["mina"]}
scoreboard players add @e[name=treepls] td 1
execute as @e[name=treepls,scores={td=1..1}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treeplts"}',Tags:["mina"]}
execute as @e[name=treepls] at @s run spreadplayers ~ ~ 0 15 false @e[name=treeplts]
execute as @e[name=treepls,scores={td=3..}] at @s run kill @e[name=treeplts,distance=0..15]
execute as @e[name=treepls,scores={td=4..}] run kill @s
execute at @e[name=derp] if block ~ ~-1 ~ minecraft:acacia_leaves run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treea"}',Tags:["mina"]}
execute as @e[name=treea] if entity @e[name=dmain,scores={td=0..45}] run data merge entity @s {CustomName:'{"text":"treepla"}',Tags:["mina"]}
scoreboard players add @e[name=treepla] td 1
execute as @e[name=treepla,scores={td=1..1}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treeplta"}',Tags:["mina"]}
execute as @e[name=treepla] at @s run spreadplayers ~ ~ 0 15 false @e[name=treeplta]
execute as @e[name=treepla,scores={td=3..}] at @s run kill @e[name=treeplta,distance=0..15]
execute as @e[name=treepla,scores={td=4..}] run kill @s
execute as @e[name=treeplta] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ acacia_sapling replace
execute as @e[name=treepltb] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ birch_sapling replace
execute as @e[name=treepltd] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ dark_oak_sapling replace
execute as @e[name=treepltj] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ jungle_sapling replace
execute as @e[name=treeplto] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ oak_sapling replace
execute as @e[name=treeplts] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ spruce_sapling replace
execute at @e[name=derp] if block ~ ~-1 ~ #minecraft:leaves run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"tree"}',Tags:["mina"]}
execute as @e[name=tree] if entity @a[scores={td=46..50}] run data merge entity @s {CustomName:'{"text":"treepl"}',Tags:["mina"]}
scoreboard players add @e[name=treepl] td 1
execute as @e[name=treepl,scores={td=1..1}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"treeplt"}',Tags:["mina"]}
execute as @e[name=treepl] at @s run spreadplayers ~ ~ 0 15 false @e[name=treeplt]
execute as @e[name=treepl,scores={td=3..}] at @s run kill @e[name=treeplt,distance=0..15]
execute as @e[name=treepl,scores={td=4..}] run kill @s
execute at @e[name=treepl] run fill ~1 ~-10 ~1 ~-1 ~ ~-1 oak_planks replace oak_log
execute at @e[name=treepl] run fill ~1 ~-10 ~1 ~-1 ~ ~-1 dark_oak_planks replace dark_oak_log
execute at @e[name=treepl] run fill ~1 ~-10 ~1 ~-1 ~ ~-1 acacia_planks replace acacia_log
execute at @e[name=treepl] run fill ~1 ~-10 ~1 ~-1 ~ ~-1 jungle_planks replace jungle_log
execute at @e[name=treepl] run fill ~1 ~-10 ~1 ~-1 ~ ~-1 spruce_planks replace spruce_log
execute at @e[name=treepl] run fill ~1 ~-10 ~1 ~-1 ~ ~-1 birch_planks replace birch_log
#execute at @e[name=treeplt] run fill ~ ~-1 ~1 ~-1 ~ ~-1 brown_concrete_powder replace #minecraft:leaves
execute as @e[name=derp] at @s if block ~ ~-1 ~ grass_block run function world:mothernature/plants/sec4/grassblock
scoreboard players add @e[name=derp] td 1
execute if entity @e[name=derp,scores={td=15..}] run scoreboard players set @e[name=derp] td 0
scoreboard objectives add ent dummy
scoreboard objectives add entd dummy
scoreboard players add @a entd 1
execute as @a[scores={entd=2..2}] as @e[type=armor_stand,tag=mina] run scoreboard players add @a ent 1
execute as @a[scores={entd=2..2}] as @e[type=armor_stand,tag=vil] run scoreboard players add @a ent 1
execute as @a[scores={entd=3..3}] if entity @a[scores={ent=13..}] run kill @e[type=armor_stand,tag=mina]
execute as @a[scores={entd=3..3}] if entity @a[scores={ent=13..}] run kill @e[type=armor_stand,tag=vil]
execute as @a[scores={entd=5..5}] run scoreboard players set @a entd 0
execute as @a[scores={entd=4..4}] run scoreboard players set @a ent 0
execute if entity @a[scores={entd=3..3}] if entity @a[scores={ent=80..}] run say [Minecraft Alive] - Warning: Max Activity Detected. Killing 13+ entities...
execute as @e[name=dmain,scores={td=50..}] run scoreboard players set @s td 0