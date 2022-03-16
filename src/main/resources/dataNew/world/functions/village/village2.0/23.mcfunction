


















execute if entity @s[scores={vpol1=2..2}] if entity @s[scores={vpol2=2..2}] if entity @s[scores={vpol3=2..2}] if entity @s[scores={vpol4=2..2}] if entity @s[scores={vpol=2..2}] run scoreboard players set @s vpol 3
execute at @s if entity @s[scores={vpol=3..3}] as @e[tag=!notick,name=vt1,distance=0..100] at @s run fill ~1 ~-5 ~ ~-1 ~ ~ cobblestone replace
execute at @s if entity @s[scores={vpol=3..3}] as @e[tag=!notick,name=vt1,distance=0..100] at @s run fill ~ ~-5 ~1 ~ ~ ~-1 cobblestone replace
execute at @s if entity @s[scores={vpol=3..3}] as @e[tag=!notick,name=vt1,distance=0..100] at @s run fill ~ ~8 ~ ~ ~-5 ~ cobblestone replace
execute at @s if entity @s[scores={vpol=3..3}] as @e[tag=!notick,name=vt1,distance=0..100] at @s run fill ~ ~9 ~ ~ ~9 ~ campfire replace
execute at @s if entity @s[scores={vpol=3..3}] as @e[tag=!notick,name=vt2,distance=0..100] at @s run fill ~1 ~-5 ~ ~-1 ~ ~ cobblestone replace
execute at @s if entity @s[scores={vpol=3..3}] as @e[tag=!notick,name=vt2,distance=0..100] at @s run fill ~ ~-5 ~1 ~ ~ ~-1 cobblestone replace
execute at @s if entity @s[scores={vpol=3..3}] as @e[tag=!notick,name=vt2,distance=0..100] at @s run fill ~ ~8 ~ ~ ~-5 ~ cobblestone replace
execute at @s if entity @s[scores={vpol=3..3}] as @e[tag=!notick,name=vt2,distance=0..100] at @s run fill ~ ~9 ~ ~ ~9 ~ campfire replace
execute at @s if entity @s[scores={vpol=3..3}] as @e[tag=!notick,name=vt3,distance=0..100] at @s run fill ~1 ~-5 ~ ~-1 ~ ~ cobblestone replace
execute at @s if entity @s[scores={vpol=3..3}] as @e[tag=!notick,name=vt3,distance=0..100] at @s run fill ~ ~-5 ~1 ~ ~ ~-1 cobblestone replace
execute at @s if entity @s[scores={vpol=3..3}] as @e[tag=!notick,name=vt3,distance=0..100] at @s run fill ~ ~8 ~ ~ ~-5 ~ cobblestone replace
execute at @s if entity @s[scores={vpol=3..3}] as @e[tag=!notick,name=vt3,distance=0..100] at @s run fill ~ ~9 ~ ~ ~9 ~ campfire replace
execute at @s if entity @s[scores={vpol=3..3}] as @e[tag=!notick,name=vt4,distance=0..100] at @s run fill ~1 ~-5 ~ ~-1 ~ ~ cobblestone replace
execute at @s if entity @s[scores={vpol=3..3}] as @e[tag=!notick,name=vt4,distance=0..100] at @s run fill ~ ~-5 ~1 ~ ~ ~-1 cobblestone replace
execute at @s if entity @s[scores={vpol=3..3}] as @e[tag=!notick,name=vt4,distance=0..100] at @s run fill ~ ~8 ~ ~ ~-5 ~ cobblestone replace
execute at @s if entity @s[scores={vpol=3..3}] as @e[tag=!notick,name=vt4,distance=0..100] at @s run fill ~ ~9 ~ ~ ~9 ~ campfire replace
execute at @s if entity @s[scores={vpol=3..3}] run scoreboard players set @s vpol 4