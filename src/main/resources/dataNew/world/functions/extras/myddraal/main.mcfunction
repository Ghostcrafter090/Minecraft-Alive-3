
function world:extras/myddraal/main.0/0
execute as @a at @s if entity @e[tag=!notick,type=wither_skeleton,tag=Myddraal,distance=0..45] run function world:extras/myddraal/util/main
execute as @e[type=wither_skeleton,tag=Myddraal] at @s run particle minecraft:crimson_spore ~ ~ ~ 1 1 1 1 50 force
execute as @e[type=armor_stand,name=deathdetect] at @s unless entity @e[type=wither_skeleton,tag=Myddraal,distance=0..2] run function world:extras/myddraal/death
function world:extras/myddraal/spawn