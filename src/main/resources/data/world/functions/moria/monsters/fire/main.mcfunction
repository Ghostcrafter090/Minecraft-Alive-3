# Define
scoreboard objectives add airfill dummy

# Spawn
execute unless entity @e[type=!item,type=!falling_block,scores={airfill=1..1}] as @a[sort=random,limit=1] at @s positioned ~ 20 ~ run summon wither ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,PersistenceRequired:1b,CanPickUpLoot:1b,Invul:1200,Tags:["airfill"],CustomName:'{"text":"XXXXXXXXXXXXXXX SOUL EATER XXXXXXXXXXXXXXX","obfuscated":true}',Attributes:[{Name:generic.follow_range,Base:100}]}
execute unless entity @e[type=!item,type=!falling_block,scores={airfill=1..1}] as @a[sort=random,limit=1] at @s positioned ~ 20 ~ run summon wither ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,PersistenceRequired:1b,CanPickUpLoot:1b,Invul:1200,Tags:["airfill"],CustomName:'{"text":"XXXXXXXXXXXXXXX SOUL EATER XXXXXXXXXXXXXXX","obfuscated":true}',Attributes:[{Name:generic.follow_range,Base:100}]}
execute unless entity @e[type=!item,type=!falling_block,scores={airfill=1..1}] as @a[sort=random,limit=1] at @s positioned ~ 20 ~ run summon wither ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,PersistenceRequired:1b,CanPickUpLoot:1b,Invul:1200,Tags:["airfill"],CustomName:'{"text":"XXXXXXXXXXXXXXX SOUL EATER XXXXXXXXXXXXXXX","obfuscated":true}',Attributes:[{Name:generic.follow_range,Base:100}]}
execute unless entity @e[type=!item,type=!falling_block,scores={airfill=1..1}] as @a[sort=random,limit=1] at @s positioned ~ 20 ~ run summon blaze ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,PersistenceRequired:1b,CanPickUpLoot:1b,Tags:["airfill"],CustomName:'{"text":"XXXXXXXXXXXXXXX SOUL EATER XXXXXXXXXXXXXXX","obfuscated":true}',Attributes:[{Name:generic.follow_range,Base:100}]}
execute unless entity @e[type=!item,type=!falling_block,scores={airfill=1..1}] as @a[sort=random,limit=1] at @s positioned ~ 20 ~ run summon blaze ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,PersistenceRequired:1b,CanPickUpLoot:1b,Tags:["airfill"],CustomName:'{"text":"XXXXXXXXXXXXXXX SOUL EATER XXXXXXXXXXXXXXX","obfuscated":true}',Attributes:[{Name:generic.follow_range,Base:100}]}
execute unless entity @e[type=!item,type=!falling_block,scores={airfill=1..1}] as @a[sort=random,limit=1] at @s positioned ~ 20 ~ run summon blaze ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,PersistenceRequired:1b,CanPickUpLoot:1b,Tags:["airfill"],CustomName:'{"text":"XXXXXXXXXXXXXXX SOUL EATER XXXXXXXXXXXXXXX","obfuscated":true}',Attributes:[{Name:generic.follow_range,Base:100}]}
execute unless entity @e[type=!item,type=!falling_block,scores={airfill=1..1}] as @a[sort=random,limit=1] at @s positioned ~ 20 ~ run summon ghast ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,PersistenceRequired:1b,CanPickUpLoot:1b,ExplosionPower:10,Tags:["airfill"],CustomName:'{"text":"XXXXXXXXXXXXXXX SOUL EATER XXXXXXXXXXXXXXX","obfuscated":true}'}
execute unless entity @e[type=!item,type=!falling_block,scores={airfill=1..1}] as @a[sort=random,limit=1] at @s positioned ~ 20 ~ run summon ghast ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,PersistenceRequired:1b,CanPickUpLoot:1b,ExplosionPower:10,Tags:["airfill"],CustomName:'{"text":"XXXXXXXXXXXXXXX SOUL EATER XXXXXXXXXXXXXXX","obfuscated":true}'}
execute unless entity @e[type=!item,type=!falling_block,scores={airfill=1..1}] as @a[sort=random,limit=1] at @s positioned ~ 20 ~ run summon ghast ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,PersistenceRequired:1b,CanPickUpLoot:1b,ExplosionPower:10,Tags:["airfill"],CustomName:'{"text":"XXXXXXXXXXXXXXX SOUL EATER XXXXXXXXXXXXXXX","obfuscated":true}'}
execute as @e[type=!item,type=!falling_block,tag=airfill] run scoreboard players set @s airfill 1

# Effects
effect give @e[type=!item,type=!falling_block,tag=airfill,sort=random,limit=1] minecraft:resistance 100000 4
effect give @e[type=!item,type=!falling_block,scores={airfill=1..1},tag=!airfill,sort=random,limit=1] minecraft:resistance 100000 2

# Spread
execute as @e[type=!item,type=!falling_block,scores={airfill=1..1},sort=random,limit=1] at @s as @e[type=!item,type=!falling_block,distance=0..12] unless entity @s[scores={airfill=1..1}] unless entity @s[type=player] unless entity @s[type=item] unless entity @s[type=falling_block] unless entity @s[type=armor_stand] unless entity @s[type=item_frame] run scoreboard players set @s airfill 1

#Main
execute if entity @a[scores={regu=15..15}] run effect give @e[type=!item,type=!falling_block,scores={airfill=1..1}] minecraft:water_breathing 1000000 5
execute if entity @a[scores={regu=15..15}] run effect give @e[type=!item,type=!falling_block,scores={airfill=1..1}] minecraft:resistance 1000000 5
execute if entity @a[scores={regu=15..15}] run effect give @e[type=!item,type=!falling_block,scores={airfill=1..1}] minecraft:fire_resistance 1000000 5
# execute if entity @e[type=!item,type=!falling_block,name=dmain,scores={regu=2..12}] as @e[type=!item,type=!falling_block,scores={airfill=1..1},limit=2,sort=random] at @s as @e[type=!player,distance=0.25] unless entity @s[type=item] unless entity @s[type=wither_skull] unless entity @s[scores={waterfill=1..1}] run scoreboard players set @s airfill 1
execute if entity @e[type=!item,type=!falling_block,name=dmain,scores={regu=1..1}] at @e[type=!item,type=!falling_block,scores={airfill=1..1}] unless entity @e[type=!item,type=!falling_block,name=dmain,scores={unload=1..1}] run forceload remove ~17 ~-17 ~17 ~-17
execute if entity @e[type=!item,type=!falling_block,name=dmain,scores={regu=1..11}] at @e[type=!item,type=!falling_block,scores={airfill=1..1},limit=2,sort=random] run fill ~8 ~-8 ~8 ~-8 ~8 ~-8 fire replace lapis_ore
execute if entity @e[type=!item,type=!falling_block,name=dmain,scores={regu=9..9}] at @e[type=!item,type=!falling_block,scores={airfill=1..1}] unless entity @e[type=!item,type=!falling_block,name=dmain,scores={unload=1..1}] run forceload remove ~ ~17 ~ ~17
execute if entity @e[type=!item,type=!falling_block,name=dmain,scores={regu=10..10}] at @e[type=!item,type=!falling_block,scores={airfill=1..1},limit=2,sort=random] run forceload remove ~17 ~ ~17 ~
execute if entity @e[type=!item,type=!falling_block,name=dmain,scores={regu=3..13}] at @e[type=!item,type=!falling_block,scores={airfill=1..1},limit=2,sort=random] run fill ~-8 ~-8 ~8 ~-8 ~8 ~-8 fire replace minecraft:gold_ore
execute if entity @e[type=!item,type=!falling_block,name=dmain,scores={regu=4..14}] at @e[type=!item,type=!falling_block,scores={airfill=1..1},limit=2,sort=random] run fill ~8 ~-8 ~8 ~-8 ~8 ~-8 fire replace emerald_ore
execute if entity @e[type=!item,type=!falling_block,name=dmain,scores={regu=6..6}] at @e[type=!item,type=!falling_block,scores={airfill=1..1}] unless entity @e[type=!item,type=!falling_block,name=dmain,scores={unload=1..1}] run forceload remove ~-17 ~17 ~-17 ~17
execute if entity @e[type=!item,type=!falling_block,name=dmain,scores={regu=5..15}] at @e[type=!item,type=!falling_block,scores={airfill=1..1},limit=2,sort=random] run fill ~8 ~-8 ~8 ~-8 ~8 ~-8 fire replace redstone_ore
execute if entity @e[type=!item,type=!falling_block,name=dmain,scores={regu=6..6}] at @e[type=!item,type=!falling_block,scores={airfill=1..1}] unless entity @e[type=!item,type=!falling_block,name=dmain,scores={unload=1..1}] run forceload remove ~ ~-17 ~ ~-17
execute at @e[type=!item,type=!falling_block,scores={airfill=1..1},limit=2,sort=random] run fill ~3 ~ ~3 ~-3 ~5 ~-3 fire replace dirt
execute at @e[type=!item,type=!falling_block,scores={airfill=1..1}] run forceload add ~ ~ ~ ~
execute at @e[scores={airfill=1..1},type=ghast,limit=2,sort=random] run fill ~8 ~-8 ~8 ~-8 ~8 ~-8 fire replace dirt
execute if entity @e[type=!item,type=!falling_block,name=dmain,scores={regu=7..7}] at @e[type=!item,type=!falling_block,scores={airfill=1..1}] unless entity @e[type=!item,type=!falling_block,name=dmain,scores={unload=1..1}] run forceload remove ~-17 ~-17 ~-17 ~-17
execute at @e[type=!item,type=!falling_block,scores={airfill=1..1},limit=2,sort=random] run fill ~8 ~-8 ~8 ~-8 ~8 ~-8 fire replace coal_ore
execute if entity @e[type=!item,type=!falling_block,name=dmain,scores={regu=8..8}] at @e[type=!item,type=!falling_block,scores={airfill=1..1}] unless entity @e[type=!item,type=!falling_block,name=dmain,scores={unload=1..1}] run forceload remove ~17 ~17 ~17 ~17
execute at @e[type=!item,type=!falling_block,scores={airfill=1..1},limit=2,sort=random] run fill ~8 ~-8 ~8 ~-8 ~8 ~-8 fire replace iron_ore
execute at @e[type=!item,type=!falling_block,scores={airfill=11..11}] unless entity @e[type=!item,type=!falling_block,name=dmain,scores={unload=1..1}] run forceload remove ~-17 ~ ~-17 ~
execute at @e[type=!item,type=!falling_block,scores={airfill=1..1},limit=2,sort=random] run fill ~8 ~-8 ~8 ~-8 ~8 ~-8 fire replace diamond_ore
execute at @e[scores={airfill=1..1},type=wither,limit=2,sort=random] run fill ~3 ~-5 ~3 ~-3 ~ ~-3 fire replace #minecraft:base_stone_overworld
execute at @e[scores={airfill=1..1},type=ghast,limit=2,sort=random] run fill ~8 ~-8 ~8 ~-8 ~8 ~-8 fire replace #minecraft:base_stone_overworld
execute at @e[type=!item,type=!falling_block,scores={airfill=1..1},limit=2,sort=random] run fill ~3 ~ ~3 ~-3 ~5 ~-3 fire replace #minecraft:base_stone_overworld
execute as @e[type=!item,type=!falling_block,scores={airfill=1..1}] at @s positioned ~ 45 ~ if entity @s[dy=200] run tp @s ~ ~-20 ~
execute at @e[type=!item,type=!falling_block,scores={airfill=1..1},limit=2,sort=random] run fill ~8 ~-8 ~8 ~-8 ~8 ~-8 lava replace water
execute at @e[scores={airfill=1..1},type=bat,limit=2,sort=random] run fill ~5 ~-5 ~5 ~-5 ~5 ~-5 fire replace #minecraft:base_stone_overworld











