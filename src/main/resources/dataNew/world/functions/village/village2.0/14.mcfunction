










execute if entity @s[scores={vpol1=1..1}] if entity @s[scores={vpol2=1..1}] if entity @s[scores={vpol3=1..1}] if entity @s[scores={vpol4=1..1}] if entity @s[scores={vpol=0..0}] run scoreboard players set @s vpol 1
execute if entity @s[scores={vpol=1..1}] as @e[tag=!notick,name=vpol1,tag=vil] at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["vil"],CustomName:'{"text":"vt1"}'}
execute if entity @s[scores={vpol=1..1}] as @e[tag=!notick,name=vpol2,tag=vil] at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["vil"],CustomName:'{"text":"vt2"}'}
execute if entity @s[scores={vpol=1..1}] as @e[tag=!notick,name=vpol3,tag=vil] at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["vil"],CustomName:'{"text":"vt3"}'}
execute if entity @s[scores={vpol=1..1}] as @e[tag=!notick,name=vpol4,tag=vil] at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["vil"],CustomName:'{"text":"vt4"}'}
execute at @s if entity @s[scores={vpol=1..1}] if entity @e[tag=!notick,name=vt1,tag=vil,distance=0..100] if entity @e[tag=!notick,name=vt2,tag=vil,distance=0..100] if entity @e[tag=!notick,name=vt3,tag=vil,distance=0..100] if entity @e[tag=!notick,name=vt4,tag=vil,distance=0..100] as @e[tag=!notick,name=vt1,tag=vil,distance=0..100] at @s run spreadplayers ~ ~ 0 1 false @s
execute at @s if entity @s[scores={vpol=1..1}] if entity @e[tag=!notick,name=vt1,tag=vil,distance=0..100] if entity @e[tag=!notick,name=vt2,tag=vil,distance=0..100] if entity @e[tag=!notick,name=vt3,tag=vil,distance=0..100] if entity @e[tag=!notick,name=vt4,tag=vil,distance=0..100] as @e[tag=!notick,name=vt2,tag=vil,distance=0..100] at @s run spreadplayers ~ ~ 0 1 false @s
execute at @s if entity @s[scores={vpol=1..1}] if entity @e[tag=!notick,name=vt1,tag=vil,distance=0..100] if entity @e[tag=!notick,name=vt2,tag=vil,distance=0..100] if entity @e[tag=!notick,name=vt3,tag=vil,distance=0..100] if entity @e[tag=!notick,name=vt4,tag=vil,distance=0..100] as @e[tag=!notick,name=vt3,tag=vil,distance=0..100] at @s run spreadplayers ~ ~ 0 1 false @s
execute at @s if entity @s[scores={vpol=1..1}] if entity @e[tag=!notick,name=vt1,tag=vil,distance=0..100] if entity @e[tag=!notick,name=vt2,tag=vil,distance=0..100] if entity @e[tag=!notick,name=vt3,tag=vil,distance=0..100] if entity @e[tag=!notick,name=vt4,tag=vil,distance=0..100] as @e[tag=!notick,name=vt4,tag=vil,distance=0..100] at @s run spreadplayers ~ ~ 0 1 false @s
execute at @s if entity @s[scores={vpol=1..1}] if entity @e[tag=!notick,name=vt1,tag=vil,distance=0..100] if entity @e[tag=!notick,name=vt2,tag=vil,distance=0..100] if entity @e[tag=!notick,name=vt3,tag=vil,distance=0..100] if entity @e[tag=!notick,name=vt4,tag=vil,distance=0..100] run scoreboard players set @s vpol 2