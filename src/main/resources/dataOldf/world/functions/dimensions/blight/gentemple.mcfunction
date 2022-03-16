scoreboard objectives add yPos dummy
execute in mca:the_blight positioned 1000 100 0 run forceload add ~100 ~100 ~-100 ~-100
execute in mca:the_blight positioned 1000 55 0 run summon marker ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["witherrosetemple"],CustomName:'{"text":"witherrosetemple"}'}
execute in mca:the_blight positioned 1000 55 0 as @e[type=marker,distance=0..300] at @s run spreadplayers ~ ~ 1 2 false @s
execute as @e[tag=witherrosetemple] store result score @s yPos run data get entity @e[tag=witherrosetemple,limit=1] Pos[1]
execute in mca:the_blight positioned 1000 55 0 as @e[type=marker,distance=0..300] at @s if entity @s[scores={yPos=150..}] run tp @s ~ 100 ~ ~ ~
execute as @e[tag=witherrosetemple,type=marker] at @s run fill ~45 ~-8 ~8 ~-8 ~8 ~-8 air replace water
execute as @e[tag=witherrosetemple,type=marker] at @s run setblock ~ ~-7 ~ structure_block{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:1b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:48,posZ:0,integrity:1.0f,showair:0b,name:"minecraft:wrtemple_spawn2",id:"minecraft:structure_block",sizeY:3,sizeZ:3,showboundingbox:0b} replace
execute as @e[tag=witherrosetemple,type=marker] at @s run setblock ~ ~-7 ~1 minecraft:redstone_block destroy