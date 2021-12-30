# Define
scoreboard objectives add MyddraalHit minecraft.custom:minecraft.damage_taken
scoreboard objectives add MyddraalHita health
scoreboard objectives add MyddraalHitb dummy
scoreboard objectives add MMfix dummy
scoreboard players set @a MMfix 10

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
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..10] run scoreboard players add @s MMEffectTick 1
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..6,tag=!Myddraal] at @s facing entity @e[type=wither_skeleton,tag=Myddraal,limit=1,distance=0..10,sort=random] feet run tp @s ~ ~ ~ ~ ~
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..20] run effect give @s slowness 3 0 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..15,tag=!Myddraal] run effect give @s slowness 3 1 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..10,tag=!Myddraal] run effect give @s slowness 3 2 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..5,tag=!Myddraal] run effect give @s slowness 3 3 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..5] run effect give @s weakness 3 0 true
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..10,scores={MMEffectTick=0..3}] run effect give @s blindness 3 2
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..10,scores={MMEffectTick=3..4}] run effect clear @s blindness
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..10,scores={MMEffectTick=4..}] run scoreboard players set @s MMEffectTick 0

# General Effects
execute as @e[type=wither_skeleton,tag=Myddraal] at @s run particle minecraft:crimson_spore ~ ~ ~ 1 1 1 1 100 force

# Death Effects
execute as @e[type=armor_stand,name=deathdetect] at @s unless entity @e[type=wither_skeleton,tag=Myddraal,distance=0..2] run function world:extras/myddraal/death

# Spawnning
function world:extras/myddraal/spawn