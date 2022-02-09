
execute at @s as @e[type=!item_frame,distance=0..10] run scoreboard players add @s MMEffectTick 1
execute at @s as @e[type=!item_frame,distance=0..6,tag=!Myddraal] at @s facing entity @e[type=!item_frame,tag=Myddraal,limit=1,distance=0..10,sort=random] feet run tp @s ~ ~ ~ ~ ~
execute at @s as @e[type=!item_frame,distance=0..20] run effect give @s slowness 3 0 true
execute at @s as @e[type=!item_frame,distance=0..15,tag=!Myddraal] run effect give @s slowness 3 1 true
execute at @s as @e[type=!item_frame,distance=0..10,tag=!Myddraal] run effect give @s slowness 3 2 true
execute at @s as @e[type=!item_frame,distance=0..5,tag=!Myddraal] run effect give @s slowness 3 3 true
execute at @s as @e[type=!item_frame,distance=0..5] run effect give @s weakness 3 0 true
execute at @s as @e[type=!item_frame,distance=0..10,scores={MMEffectTick=0..3}] run effect give @s blindness 3 2
execute at @s as @e[type=!item_frame,distance=0..10,scores={MMEffectTick=3..4}] run effect clear @s blindness
execute at @s as @e[type=!item_frame,distance=0..10,scores={MMEffectTick=4..}] run scoreboard players set @s MMEffectTick 0
execute at @s run particle minecraft:crimson_spore ~ ~ ~ 1 1 1 1 100 force