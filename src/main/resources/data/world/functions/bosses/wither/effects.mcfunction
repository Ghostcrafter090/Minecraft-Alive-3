# Define
scoreboard objectives add spawnTic dummy

# Main
weather thunder 100000
execute as @a at @s run particle minecraft:ash ~ ~ ~ 10 10 10 1 100
execute as @a at @s run particle minecraft:flame ~ ~ ~ 10 10 10 0 10
execute if entity @e[name=dmain,type=marker,scores={atic=15..15}] as @e[type=piglin] run data modify entity @s IsImmuneToZombification set value 1b
execute if entity @e[name=dmain,type=marker,scores={atic=1..1}] as @e[type=piglin,limit=1,sort=random] at @s if entity @p[distance=0..20] run data modify entity @s Brain.memories.minecraft:angry_at.value set from entity @p UUID
execute if entity @e[name=dmain,type=marker,scores={atic=1..1}] as @e[type=piglin,limit=1,sort=random] at @s unless entity @p[distance=0..20] run data modify entity @s Brain.memories.minecraft:angry_at.value set from entity @e[sort=nearest,limit=1,type=!piglin,type=!marker] UUID
execute if entity @e[name=dmain,type=marker,scores={atic=1..1}] as @e[type=piglin,limit=1,sort=random] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:600}]}
execute if entity @e[name=dmain,type=marker,scores={atic=1..1}] as @e[type=piglin,limit=1,sort=random] run data modify entity @s Brain.memories.minecraft:angry_at.value.ttl set value 600L
execute as @a at @s unless entity @e[tag=portal,distance=0..200] run summon marker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["portal"],CustomName:'{"text":"portal"}'}
execute as @e[type=marker,tag=portal,tag=!finished] at @s run spreadplayers ~ ~ 50 200 false @s
execute as @e[type=marker,tag=portal,tag=!finished] at @s run fill ~12 ~-5 ~12 ~-13 ~-5 ~-12 netherrack replace air
execute as @e[type=marker,tag=portal,tag=!finished] at @s run fill ~10 ~-4 ~10 ~-11 ~-4 ~-10 netherrack replace air
execute as @e[type=marker,tag=portal,tag=!finished] at @s run fill ~8 ~-3 ~8 ~-9 ~-3 ~-8 netherrack replace air
execute as @e[type=marker,tag=portal,tag=!finished] at @s run fill ~6 ~-2 ~6 ~-7 ~-2 ~-6 netherrack replace air
execute as @e[type=marker,tag=portal,tag=!finished] at @s run fill ~4 ~-1 ~4 ~-5 ~-1 ~-4 netherrack replace air
execute as @e[type=marker,tag=portal,tag=!finished] at @s run fill ~2 ~ ~2 ~-3 ~ ~-2 netherrack replace air
execute as @e[type=marker,tag=portal,tag=!finished] at @s run fill ~1 ~1 ~ ~-2 ~1 ~ minecraft:obsidian replace air
execute as @e[type=marker,tag=portal,tag=!finished] at @s run fill ~-2 ~1 ~ ~-2 ~5 ~ minecraft:obsidian replace air
execute as @e[type=marker,tag=portal,tag=!finished] at @s run fill ~1 ~1 ~ ~1 ~5 ~ minecraft:obsidian replace air
execute as @e[type=marker,tag=portal,tag=!finished] at @s run fill ~1 ~5 ~ ~-2 ~5 ~ minecraft:obsidian replace air
execute as @e[type=marker,tag=portal,tag=!finished] at @s run fill ~ ~2 ~ ~ ~2 ~ fire destroy
execute as @e[type=marker,tag=portal,tag=finished] run scoreboard players add @s spawnTic 1
execute as @e[type=marker,tag=portal,tag=finished,scores={spawnTic=600..}] if entity @a[scores={random=0..}] run summon piglin ~ ~2 ~
execute as @e[type=marker,tag=portal,tag=finished,scores={spawnTic=600..}] if entity @a[scores={random=..0}] run summon blaze ~ ~2 ~
execute as @e[type=marker,tag=portal,tag=finished,scores={spawnTic=600..}] run scoreboard players set @s spawnTic 0
