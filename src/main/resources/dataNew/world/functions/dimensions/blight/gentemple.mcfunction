
scoreboard objectives add yPos dummy
execute in mca:the_blight run function world:dimensions/blight/gentemple.0/1
execute as @e[tag=!notick,tag=witherrosetemple] store result score @s yPos run data get entity @e[tag=!notick,tag=witherrosetemple,limit=1] Pos[1]
execute in mca:the_blight positioned 1000 55 0 as @e[type=marker,distance=0..300] at @s if entity @s[scores={yPos=150..}] run tp @s ~ 100 ~ ~ ~
execute as @e[tag=witherrosetemple,type=marker] run function world:dimensions/blight/gentemple.0/4