# Define
scoreboard objectives add MyddraalHit minecraft.custom:minecraft.damage_taken
scoreboard objectives add MyddraalHita health
scoreboard objectives add MyddraalHitb dummy
scoreboard objectives add MMfix dummy
scoreboard players set @a MMfix 10
scoreboard objectives add rot0 dummy
scoreboard objectives add rot1 dummy
scoreboard objectives add rot2 dummy
scoreboard objectives add rot3 dummy

# Health Effects
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] run scoreboard players operation @s MyddraalHitb = @s MyddraalHita
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] run scoreboard players operation @s MyddraalHit /= @s MMfix
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] run scoreboard players operation @s MyddraalHitb -= @s MyddraalHit
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] run playsound minecraft:entity.elder_guardian.death master @a ~ ~ ~ 9 2
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=1..}] run attribute @s minecraft:generic.max_health base set 1
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=2..}] run attribute @s minecraft:generic.max_health base set 2
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=3..}] run attribute @s minecraft:generic.max_health base set 3
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=4..}] run attribute @s minecraft:generic.max_health base set 4
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=5..}] run attribute @s minecraft:generic.max_health base set 5
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=6..}] run attribute @s minecraft:generic.max_health base set 6
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=7..}] run attribute @s minecraft:generic.max_health base set 7
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=8..}] run attribute @s minecraft:generic.max_health base set 8
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=9..}] run attribute @s minecraft:generic.max_health base set 9
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=10..}] run attribute @s minecraft:generic.max_health base set 10
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=11..}] run attribute @s minecraft:generic.max_health base set 11
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=12..}] run attribute @s minecraft:generic.max_health base set 12
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=13..}] run attribute @s minecraft:generic.max_health base set 13
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=14..}] run attribute @s minecraft:generic.max_health base set 14
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=15..}] run attribute @s minecraft:generic.max_health base set 15
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=16..}] run attribute @s minecraft:generic.max_health base set 16
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=17..}] run attribute @s minecraft:generic.max_health base set 17
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=18..}] run attribute @s minecraft:generic.max_health base set 18
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=19..}] run attribute @s minecraft:generic.max_health base set 19
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=20..}] run attribute @s minecraft:generic.max_health base set 20
scoreboard players set @a MyddraalHit 0
scoreboard players set @a MyddraalHitb 20

# Sound Effects
execute as @e[type=wither_skeleton,tag=Myddraal,scores={MMEffectTick=3..}] at @s run playsound minecraft:entity.elder_guardian.ambient master @a ~ ~ ~ 1 2

# Close Effects
scoreboard objectives add MMEffectTick dummy
function world:extras/myddraal/tolerence
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..10] run scoreboard players add @s MMEffectTick 1

# Looking AI
execute as @e[tag=rot0] at @s unless entity @a[distance=0..1] run kill @s
execute as @a at @s unless entity @e[tag=rot0,distance=0..3] run summon marker ~ ~ ~ {Tags:['rot0']}
execute as @a at @s facing entity @e[tag=Myddraal] feet run tp @e[tag=rot0] ~ ~ ~ ~ ~
execute store result score @a rot0 run data get entity @e[tag=rot0,sort=nearest,limit=1] Rotation[0]
execute store result score @a rot1 run data get entity @e[tag=rot0,sort=nearest,limit=1] Rotation[1]
execute as @a at @s store result score @s rot2 run data get entity @s Rotation[0]
execute as @a at @s store result score @s rot3 run data get entity @s Rotation[1]
execute as @a unless entity @s[scores={myddraalTol=6000..}] at @s if entity @e[tag=Myddraal,distance=0..20] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=12000..}] at @s if entity @e[tag=Myddraal,distance=0..19] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=18000..}] at @s if entity @e[tag=Myddraal,distance=0..18] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=24000..}] at @s if entity @e[tag=Myddraal,distance=0..17] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=30000..}] at @s if entity @e[tag=Myddraal,distance=0..16] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=36000..}] at @s if entity @e[tag=Myddraal,distance=0..15] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=42000..}] at @s if entity @e[tag=Myddraal,distance=0..14] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=48000..}] at @s if entity @e[tag=Myddraal,distance=0..13] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=54000..}] at @s if entity @e[tag=Myddraal,distance=0..12] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=60000..}] at @s if entity @e[tag=Myddraal,distance=0..11] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=66000..}] at @s if entity @e[tag=Myddraal,distance=0..10] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=72000..}] at @s if entity @e[tag=Myddraal,distance=0..9] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=78000..}] at @s if entity @e[tag=Myddraal,distance=0..8] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=84000..}] at @s if entity @e[tag=Myddraal,distance=0..7] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=90000..}] at @s if entity @e[tag=Myddraal,distance=0..6] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=96000..}] at @s if entity @e[tag=Myddraal,distance=0..5] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=102000..}] at @s if entity @e[tag=Myddraal,distance=0..4] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=108000..}] at @s if entity @e[tag=Myddraal,distance=0..3] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=114000..}] at @s if entity @e[tag=Myddraal,distance=0..2] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=120000..}] at @s if entity @e[tag=Myddraal,distance=0..1] run function world:extras/myddraal/rot

# Other Effects
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!player,type=!item_frame,distance=0..6,tag=!Myddraal] at @s facing entity @e[type=wither_skeleton,tag=Myddraal,limit=1,distance=0..10,sort=random] feet run tp @s ~ ~ ~ ~ ~
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..30] unless entity @s[scores={myddraalTol=24000..}] run effect give @s slowness 3 0 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..22] unless entity @s[scores={myddraalTol=48000..}] run effect give @s slowness 3 0 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..15] unless entity @s[scores={myddraalTol=72000..}] run effect give @s slowness 3 0 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..7] unless entity @s[scores={myddraalTol=96000..}] run effect give @s slowness 3 0 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..3] unless entity @s[scores={myddraalTol=120000..}] run effect give @s slowness 3 0 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..22,tag=!Myddraal] unless entity @s[scores={myddraalTol=24000..}] run effect give @s slowness 3 1 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..15,tag=!Myddraal] unless entity @s[scores={myddraalTol=48000..}] run effect give @s slowness 3 1 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..7,tag=!Myddraal] unless entity @s[scores={myddraalTol=72000..}] run effect give @s slowness 3 1 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..3,tag=!Myddraal] unless entity @s[scores={myddraalTol=96000..}] run effect give @s slowness 3 1 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..15,tag=!Myddraal] unless entity @s[scores={myddraalTol=24000..}] run effect give @s slowness 3 2 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..7,tag=!Myddraal] unless entity @s[scores={myddraalTol=48000..}] run effect give @s slowness 3 2 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..3,tag=!Myddraal] unless entity @s[scores={myddraalTol=72000..}] run effect give @s slowness 3 2 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..7,tag=!Myddraal] unless entity @s[scores={myddraalTol=24000..}] run effect give @s slowness 3 3 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..3,tag=!Myddraal] unless entity @s[scores={myddraalTol=48000..}] run effect give @s slowness 3 3 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..7] unless entity @s[scores={myddraalTol=24000..}] run effect give @s weakness 3 0 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..3] unless entity @s[scores={myddraalTol=48000..}] run effect give @s weakness 3 0 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..15,scores={MMEffectTick=0..3}] unless entity @s[scores={myddraalTol=24000..}] run effect give @s blindness 3 2
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..7,scores={MMEffectTick=0..3}] unless entity @s[scores={myddraalTol=48000..}] run effect give @s blindness 3 2
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..3,scores={MMEffectTick=0..3}] unless entity @s[scores={myddraalTol=72000..}] run effect give @s blindness 3 2
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..15,scores={MMEffectTick=3..4}] run effect clear @s blindness
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..15,scores={MMEffectTick=4..}] run scoreboard players set @s MMEffectTick 0

# General Effects
execute as @e[type=wither_skeleton,tag=Myddraal] at @s run particle minecraft:crimson_spore ~ ~ ~ 1 1 1 1 50 force

# Death Effects
execute as @e[type=armor_stand,name=deathdetect] at @s unless entity @e[type=wither_skeleton,tag=Myddraal,distance=0..2] run function world:extras/myddraal/death

# Spawnning
function world:extras/myddraal/spawn