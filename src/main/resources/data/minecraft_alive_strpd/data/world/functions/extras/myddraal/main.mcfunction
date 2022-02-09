
function minecraft_alive_strpd:data/world/functions/extras/myddraal/main_/0
execute as @e[type=!item_frame,tag=Myddraal] run function minecraft_alive_strpd:data/world/functions/extras/myddraal/main_/1
function minecraft_alive_strpd:data/world/functions/extras/myddraal/main_/2
execute as @e[type=!item_frame,tag=Myddraal,scores={MMEffectTick=3..}] at @s run playsound minecraft:entity.elder_guardian.ambient master @a ~ ~ ~ 1 2
scoreboard objectives add MMEffectTick dummy
execute as @e[type=!item_frame,tag=Myddraal] run function minecraft_alive_strpd:data/world/functions/extras/myddraal/main_/5
execute as @e[type=!item_frame,name=deathdetect] at @s unless entity @e[type=!item_frame,tag=Myddraal,distance=0..2] run function world:extras/myddraal/death
function world:extras/myddraal/spawn