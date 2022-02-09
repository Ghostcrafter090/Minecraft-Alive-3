
function world:extras/myddraal/main_/0
execute as @e[type=wither_skeleton,tag=Myddraal] run function world:extras/myddraal/main_/1
function world:extras/myddraal/main_/2
execute as @e[type=wither_skeleton,tag=Myddraal,scores={MMEffectTick=3..}] at @s run playsound minecraft:entity.elder_guardian.ambient master @a ~ ~ ~ 1 2
function world:extras/myddraal/main_/4
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[type=!item_frame,distance=0..10] run scoreboard players add @s MMEffectTick 1
execute as @e[tag=rot0] at @s unless entity @a[distance=0..1] run kill @s
execute as @a run function world:extras/myddraal/main_/7
execute store result score @a rot0 run data get entity @e[tag=rot0,sort=nearest,limit=1] Rotation[0]
execute store result score @a rot1 run data get entity @e[tag=rot0,sort=nearest,limit=1] Rotation[1]
execute as @a run function world:extras/myddraal/main_/10
execute as @e[type=wither_skeleton,tag=Myddraal] run function world:extras/myddraal/main_/11
execute as @e[type=armor_stand,name=deathdetect] at @s unless entity @e[type=wither_skeleton,tag=Myddraal,distance=0..2] run function world:extras/myddraal/death
function world:extras/myddraal/spawn