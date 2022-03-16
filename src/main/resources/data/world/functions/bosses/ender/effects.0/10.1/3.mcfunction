

effect give @e[tag=!notick,type=enderman] minecraft:regeneration 10 3
effect give @e[tag=!notick,type=enderman] minecraft:strength 10 3
effect give @e[tag=!notick,type=enderman] minecraft:resistance 10 3
effect give @e[tag=!notick,type=enderman] minecraft:speed 10 2
effect give @e[tag=!notick,type=enderman] minecraft:jump_boost 10 1
execute as @e[tag=!notick,type=enderman] at @s unless entity @a[distance=0..20] run effect give @e[tag=!notick,type=enderman] minecraft:invisibility 3 0