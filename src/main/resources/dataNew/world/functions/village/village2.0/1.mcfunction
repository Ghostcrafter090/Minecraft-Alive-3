






execute at @s unless entity @e[tag=!notick,name=vilf,distance=0..100] run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["vil"],CustomName:'{"text":"vilf"}'}
execute at @s unless entity @e[tag=!notick,name=vilf2,distance=0..100] run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["vil"],CustomName:'{"text":"vilf2"}'}
execute at @s unless entity @e[tag=!notick,name=vilf3,distance=0..100] run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["vil"],CustomName:'{"text":"vilf3"}'}
execute at @s run spreadplayers ~ ~ 1 50 false @e[tag=!notick,name=vilf,tag=vil]
execute at @s run spreadplayers ~ ~ 1 50 false @e[tag=!notick,name=vilf2,tag=vil]
execute at @s run spreadplayers ~ ~ 1 50 false @e[tag=!notick,name=vilf3,tag=vil]