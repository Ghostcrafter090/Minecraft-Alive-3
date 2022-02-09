
execute at @s as @e[type=!player,type=!item_frame,distance=0..6,tag=!Myddraal] at @s facing entity @e[type=wither_skeleton,tag=Myddraal,limit=1,distance=0..10,sort=random] feet run tp @s ~ ~ ~ ~ ~
execute at @s as @e[type=!item_frame,distance=0..30] unless entity @s[scores={myddraalTol=24000..}] run effect give @s slowness 3 0 true
execute at @s as @e[type=!item_frame,distance=0..22] unless entity @s[scores={myddraalTol=48000..}] run effect give @s slowness 3 0 true
execute at @s as @e[type=!item_frame,distance=0..15] unless entity @s[scores={myddraalTol=72000..}] run effect give @s slowness 3 0 true
execute at @s as @e[type=!item_frame,distance=0..7] unless entity @s[scores={myddraalTol=96000..}] run effect give @s slowness 3 0 true
execute at @s as @e[type=!item_frame,distance=0..3] unless entity @s[scores={myddraalTol=120000..}] run effect give @s slowness 3 0 true
execute at @s as @e[type=!item_frame,distance=0..22,tag=!Myddraal] unless entity @s[scores={myddraalTol=24000..}] run effect give @s slowness 3 1 true
execute at @s as @e[type=!item_frame,distance=0..15,tag=!Myddraal] unless entity @s[scores={myddraalTol=48000..}] run effect give @s slowness 3 1 true
execute at @s as @e[type=!item_frame,distance=0..7,tag=!Myddraal] unless entity @s[scores={myddraalTol=72000..}] run effect give @s slowness 3 1 true
execute at @s as @e[type=!item_frame,distance=0..3,tag=!Myddraal] unless entity @s[scores={myddraalTol=96000..}] run effect give @s slowness 3 1 true
execute at @s as @e[type=!item_frame,distance=0..15,tag=!Myddraal] unless entity @s[scores={myddraalTol=24000..}] run effect give @s slowness 3 2 true
execute at @s as @e[type=!item_frame,distance=0..7,tag=!Myddraal] unless entity @s[scores={myddraalTol=48000..}] run effect give @s slowness 3 2 true
execute at @s as @e[type=!item_frame,distance=0..3,tag=!Myddraal] unless entity @s[scores={myddraalTol=72000..}] run effect give @s slowness 3 2 true
execute at @s as @e[type=!item_frame,distance=0..7,tag=!Myddraal] unless entity @s[scores={myddraalTol=24000..}] run effect give @s slowness 3 3 true
execute at @s as @e[type=!item_frame,distance=0..3,tag=!Myddraal] unless entity @s[scores={myddraalTol=48000..}] run effect give @s slowness 3 3 true
execute at @s as @e[type=!item_frame,distance=0..7] unless entity @s[scores={myddraalTol=24000..}] run effect give @s weakness 3 0 true
execute at @s as @e[type=!item_frame,distance=0..3] unless entity @s[scores={myddraalTol=48000..}] run effect give @s weakness 3 0 true
execute at @s as @e[type=!item_frame,distance=0..15,scores={MMEffectTick=0..3}] unless entity @s[scores={myddraalTol=24000..}] run effect give @s blindness 3 2
execute at @s as @e[type=!item_frame,distance=0..7,scores={MMEffectTick=0..3}] unless entity @s[scores={myddraalTol=48000..}] run effect give @s blindness 3 2
execute at @s as @e[type=!item_frame,distance=0..3,scores={MMEffectTick=0..3}] unless entity @s[scores={myddraalTol=72000..}] run effect give @s blindness 3 2
execute at @s as @e[type=!item_frame,distance=0..15,scores={MMEffectTick=3..4}] run effect clear @s blindness
execute at @s as @e[type=!item_frame,distance=0..15,scores={MMEffectTick=4..}] run scoreboard players set @s MMEffectTick 0
execute at @s run particle minecraft:crimson_spore ~ ~ ~ 1 1 1 1 50 force