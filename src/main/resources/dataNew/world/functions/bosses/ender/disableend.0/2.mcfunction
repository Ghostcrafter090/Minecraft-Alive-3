






execute as @a[distance=0..2000] as @e[tag=!notick,type=enderman] at @s facing entity @p eyes run tp @s ^ ^ ^0.5 ~ ~
execute as @a[distance=0..2000] run effect give @s minecraft:blindness 10 10
execute as @a[distance=0..2000] as @e[tag=!notick,type=enderman] at @s facing entity @p eyes run playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.1
execute as @a[distance=0..2000] run effect give @s minecraft:slowness 10 10
execute as @a[distance=0..2000] run effect give @s minecraft:mining_fatigue 10 10
execute as @a[distance=0..2000] run effect give @s minecraft:weakness 10 10