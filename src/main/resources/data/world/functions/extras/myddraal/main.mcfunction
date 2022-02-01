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
execute as @a unless entity @s[scores={myddraalTol=2400..}] at @s if entity @e[tag=Myddraal,distance=0..50] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=4800..}] at @s if entity @e[tag=Myddraal,distance=0..49] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=7200..}] at @s if entity @e[tag=Myddraal,distance=0..48] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=9600..}] at @s if entity @e[tag=Myddraal,distance=0..47] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=12000..}] at @s if entity @e[tag=Myddraal,distance=0..46] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=14400..}] at @s if entity @e[tag=Myddraal,distance=0..45] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=16800..}] at @s if entity @e[tag=Myddraal,distance=0..44] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=19200..}] at @s if entity @e[tag=Myddraal,distance=0..43] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=21600..}] at @s if entity @e[tag=Myddraal,distance=0..42] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=24000..}] at @s if entity @e[tag=Myddraal,distance=0..41] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=26400..}] at @s if entity @e[tag=Myddraal,distance=0..40] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=28800..}] at @s if entity @e[tag=Myddraal,distance=0..39] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=31200..}] at @s if entity @e[tag=Myddraal,distance=0..38] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=33600..}] at @s if entity @e[tag=Myddraal,distance=0..37] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=36000..}] at @s if entity @e[tag=Myddraal,distance=0..36] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=38400..}] at @s if entity @e[tag=Myddraal,distance=0..35] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=40800..}] at @s if entity @e[tag=Myddraal,distance=0..34] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=43200..}] at @s if entity @e[tag=Myddraal,distance=0..33] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=45600..}] at @s if entity @e[tag=Myddraal,distance=0..32] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=48000..}] at @s if entity @e[tag=Myddraal,distance=0..31] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=50400..}] at @s if entity @e[tag=Myddraal,distance=0..30] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=52800..}] at @s if entity @e[tag=Myddraal,distance=0..29] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=55200..}] at @s if entity @e[tag=Myddraal,distance=0..28] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=57600..}] at @s if entity @e[tag=Myddraal,distance=0..27] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=60000..}] at @s if entity @e[tag=Myddraal,distance=0..26] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=62400..}] at @s if entity @e[tag=Myddraal,distance=0..25] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=64800..}] at @s if entity @e[tag=Myddraal,distance=0..24] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=67200..}] at @s if entity @e[tag=Myddraal,distance=0..23] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=69600..}] at @s if entity @e[tag=Myddraal,distance=0..22] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=72000..}] at @s if entity @e[tag=Myddraal,distance=0..21] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=74400..}] at @s if entity @e[tag=Myddraal,distance=0..20] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=76800..}] at @s if entity @e[tag=Myddraal,distance=0..19] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=79200..}] at @s if entity @e[tag=Myddraal,distance=0..18] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=81600..}] at @s if entity @e[tag=Myddraal,distance=0..17] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=84000..}] at @s if entity @e[tag=Myddraal,distance=0..16] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=86400..}] at @s if entity @e[tag=Myddraal,distance=0..15] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=88800..}] at @s if entity @e[tag=Myddraal,distance=0..14] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=91200..}] at @s if entity @e[tag=Myddraal,distance=0..13] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=93600..}] at @s if entity @e[tag=Myddraal,distance=0..12] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=96000..}] at @s if entity @e[tag=Myddraal,distance=0..11] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=98400..}] at @s if entity @e[tag=Myddraal,distance=0..10] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=100800..}] at @s if entity @e[tag=Myddraal,distance=0..9] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=103200..}] at @s if entity @e[tag=Myddraal,distance=0..8] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=105600..}] at @s if entity @e[tag=Myddraal,distance=0..7] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=108000..}] at @s if entity @e[tag=Myddraal,distance=0..6] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=110400..}] at @s if entity @e[tag=Myddraal,distance=0..5] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=112800..}] at @s if entity @e[tag=Myddraal,distance=0..4] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=115200..}] at @s if entity @e[tag=Myddraal,distance=0..3] run function world:extras/myddraal/rot
execute as @a unless entity @s[scores={myddraalTol=117600..}] at @s if entity @e[tag=Myddraal,distance=0..2] run function world:extras/myddraal/rot
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