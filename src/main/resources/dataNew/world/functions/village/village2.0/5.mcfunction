





execute unless entity @s[scores={vpol=-10..10}] run scoreboard players set @s vpol 0
execute at @s if entity @s[scores={vpol=0..0}] unless entity @e[tag=!notick,name=vpol1,distance=0..100] run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["vil"],CustomName:'{"text":"vpol1"}'}
execute at @s if entity @s[scores={vpol=0..0}] unless entity @e[tag=!notick,name=vpol2,distance=0..100] run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["vil"],CustomName:'{"text":"vpol2"}'}
execute at @s if entity @s[scores={vpol=0..0}] unless entity @e[tag=!notick,name=vpol3,distance=0..100] run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["vil"],CustomName:'{"text":"vpol3"}'}
execute at @s if entity @s[scores={vpol=0..0}] unless entity @e[tag=!notick,name=vpol4,distance=0..100] run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["vil"],CustomName:'{"text":"vpol4"}'}