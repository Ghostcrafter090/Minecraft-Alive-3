
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] run scoreboard players operation @s MyddraalHitb = @s MyddraalHita
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] run scoreboard players operation @s MyddraalHit /= @s MMfix
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] run scoreboard players operation @s MyddraalHitb -= @s MyddraalHit
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] run playsound minecraft:entity.elder_guardian.death master @a ~ ~ ~ 9 2
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=1..}] run attribute @s minecraft:generic.max_health base set 1
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=2..}] run attribute @s minecraft:generic.max_health base set 2
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=3..}] run attribute @s minecraft:generic.max_health base set 3
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=4..}] run attribute @s minecraft:generic.max_health base set 4
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=5..}] run attribute @s minecraft:generic.max_health base set 5
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=6..}] run attribute @s minecraft:generic.max_health base set 6
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=7..}] run attribute @s minecraft:generic.max_health base set 7
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=8..}] run attribute @s minecraft:generic.max_health base set 8
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=9..}] run attribute @s minecraft:generic.max_health base set 9
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=10..}] run attribute @s minecraft:generic.max_health base set 10
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=11..}] run attribute @s minecraft:generic.max_health base set 11
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=12..}] run attribute @s minecraft:generic.max_health base set 12
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=13..}] run attribute @s minecraft:generic.max_health base set 13
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=14..}] run attribute @s minecraft:generic.max_health base set 14
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=15..}] run attribute @s minecraft:generic.max_health base set 15
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=16..}] run attribute @s minecraft:generic.max_health base set 16
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=17..}] run attribute @s minecraft:generic.max_health base set 17
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=18..}] run attribute @s minecraft:generic.max_health base set 18
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=19..}] run attribute @s minecraft:generic.max_health base set 19
execute at @s as @a[distance=0..2] if entity @s[scores={MyddraalHit=1..}] if entity @s[scores={MyddraalHitb=20..}] run attribute @s minecraft:generic.max_health base set 20