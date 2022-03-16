





execute as @e[tag=!notick,type=enderman] at @s facing entity @p eyes run tp @s ^ ^ ^0.5 ~ ~
effect give @s minecraft:blindness 10 10
execute as @e[tag=!notick,type=enderman] at @s facing entity @p eyes run playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.1
effect give @s minecraft:slowness 10 10
effect give @s minecraft:mining_fatigue 10 10
effect give @s minecraft:weakness 10 10