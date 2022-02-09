
scoreboard objectives add healtha dummy
execute at @a run function minecraft_alive_strpd:data/world/functions/extras/sawayig/main_/1
execute as @a at @s rotated as @s positioned as @s run tp @e[name=Gravestone1,distance=0..25,limit=1,sort=random] ^ ^ ^16 ~ ~
execute at @e[name=Gravestone1] as @e[tag=sawayig,distance=0..17,scores={healtha=21..}] run data merge entity @s {Invulnerable:1b,NoAI:1b,ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-53952674,-1667939646,-1759410109,-1925556676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODMzZGUwMjRhOTg4N2FiZGMwNzM3N2MwY2JmMzRiOWU2OTFmOWVmYjQxNGUzMDE4YmU0NzJlMzJhMTM0YmUyNSJ9fX0="}]}}}}]}
execute if entity @e[name=dmain,scores={timetype=0..0}] at @e[name=Gravestone1] as @e[tag=sawayig,nbt={NoAI:1b},distance=17..40] run data merge entity @s {Invulnerable:0b,NoAI:0b,ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1549878042,1100302255,-1575868462,-1626446246],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTVjMmVmYTQyMTgzMDAwODA2MjkwNjI4NGYwMzNmOTA1ZGVkNGVhMmM3ZWQ5YjZlMDk3YWMxZGUyNDI3ZTcwOCJ9fX0="}]}}}}]}
execute unless entity @e[name=dmain,scores={timetype=0..0}] at @e[name=Gravestone1] as @e[tag=sawayig,distance=17..40] if entity @s[nbt={NoAI:1b}] at @s positioned ~ 50 ~ if entity @s[dy=-50] run data merge entity @s {Invulnerable:0b,NoAI:0b,ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1549878042,1100302255,-1575868462,-1626446246],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTVjMmVmYTQyMTgzMDAwODA2MjkwNjI4NGYwMzNmOTA1ZGVkNGVhMmM3ZWQ5YjZlMDk3YWMxZGUyNDI3ZTcwOCJ9fX0="}]}}}}]}
execute if entity @e[name=dmain,scores={timetype=1..1}] if entity @a[scores={regulatef=600..}] as @e[tag=sawayig,scores={healtha=21..}] at @s positioned ~ 50 ~ unless entity @s[dy=-50] run data merge entity @s {Invulnerable:1b,NoAI:1b,ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-53952674,-1667939646,-1759410109,-1925556676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODMzZGUwMjRhOTg4N2FiZGMwNzM3N2MwY2JmMzRiOWU2OTFmOWVmYjQxNGUzMDE4YmU0NzJlMzJhMTM0YmUyNSJ9fX0="}]}}}}]}
function minecraft_alive_strpd:data/world/functions/extras/sawayig/main_/7
execute as @a at @s unless entity @e[name=Gravestone1,distance=0..35] run summon minecraft:marker ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"Gravestone1"}'}
execute if entity @a[scores={regulatef=600..}] run kill @e[name=Gravestone1]
execute if entity @a[scores={regulatef=601..}] run scoreboard players set @a regulatef 0
execute if entity @e[name=dmain,scores={regulateg=51..}] run scoreboard players set @e[name=dmain] regulateg 0
execute if entity @a[scores={regulatef=600..}] run function minecraft_alive_strpd:data/world/functions/extras/sawayig/main_/12
execute if entity @e[name=dmain,scores={regulateg=50..}] as @e[type=!player,limit=1,sort=random] at @s unless entity @e[tag=sawayig,distance=0..40] positioned ~ 62 ~ if entity @s[dy=-62] at @s run summon wither_skeleton ~ ~ ~ {Silent:1b,Invulnerable:1b,FallFlying:1b,PersistenceRequired:1b,CanPickUpLoot:1b,Tags:["sawayig"],CustomName:'{"text":"sáwáyíg","color":"dark_blue","bold":true,"italic":true}',ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-53952674,-1667939646,-1759410109,-1925556676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODMzZGUwMjRhOTg4N2FiZGMwNzM3N2MwY2JmMzRiOWU2OTFmOWVmYjQxNGUzMDE4YmU0NzJlMzJhMTM0YmUyNSJ9fX0="}]}}}}],ActiveEffects:[{Id:8b,Amplifier:1b,Duration:11111,ShowParticles:0b},{Id:10b,Amplifier:0b,Duration:11111},{Id:12b,Amplifier:1b,Duration:11111},{Id:13b,Amplifier:1b,Duration:11111},{Id:29b,Amplifier:1b,Duration:11111},{Id:30b,Amplifier:1b,Duration:11111}],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.follow_range,Base:300},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.8},{Name:generic.attack_damage,Base:5},{Name:generic.armor_toughness,Base:1},{Name:generic.attack_knockback,Base:2}]}
execute at @a as @e[tag=sawayig,distance=0..80] store result score @s healtha run data get entity @s Health
execute as @e[tag=sawayig,scores={healtha=0..15}] run function minecraft_alive_strpd:data/world/functions/extras/sawayig/main_/15
execute if entity @e[tag=sawayig,scores={healthb=1..}] run function world:extras/sawayig/death