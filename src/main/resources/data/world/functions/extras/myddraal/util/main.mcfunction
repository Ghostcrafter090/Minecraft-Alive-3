
execute as @e[tag=!notick,type=wither_skeleton,tag=Myddraal] run function world:extras/myddraal/util/main.0/0
function world:extras/myddraal/util/main.0/1
execute as @e[type=wither_skeleton,tag=Myddraal,scores={MMEffectTick=3..}] at @s run playsound minecraft:entity.elder_guardian.ambient master @a ~ ~ ~ 1 2
function world:extras/myddraal/util/main.0/3
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..10] run scoreboard players add @s MMEffectTick 1
execute as @e[tag=rot0] at @s unless entity @a[distance=0..1] run kill @s
execute as @a run function world:extras/myddraal/util/main.0/6
execute store result score @a rot0 run data get entity @e[tag=rot0,sort=nearest,limit=1] Rotation[0]
execute store result score @a rot1 run data get entity @e[tag=rot0,sort=nearest,limit=1] Rotation[1]
execute as @a run function world:extras/myddraal/util/main.0/9
execute as @e[type=wither_skeleton,tag=Myddraal] run function world:extras/myddraal/util/main.0/10