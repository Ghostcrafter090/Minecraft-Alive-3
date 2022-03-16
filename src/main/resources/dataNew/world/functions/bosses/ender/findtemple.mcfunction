
execute as @e[tag=!notick,type=item,nbt={Item:{id:"mca:defunct_end_key",Count:1b}}] run function world:bosses/ender/findtemple.0/0
execute as @e[type=marker,tag=templeFindball] at @s store result score @s jTempleDistance run locate jungle_pyramid
execute as @e[type=marker,tag=templeFind] at @s store result score @s jTempleDistance run locate jungle_pyramid
execute as @e[tag=templeFind] run function world:bosses/ender/findtemple.0/3
execute as @e[tag=templeFind,type=marker] at @s if entity @e[type=!marker,distance=0..2] run particle minecraft:dragon_breath ~ ~ ~ 1 1 1 0 100 force
execute at @e[tag=templeFind] run particle glow ~ ~1 ~ 0 0 0 0.01 20 force
execute as @e[tag=templeFind,type=marker] run function world:bosses/ender/findtemple.0/6