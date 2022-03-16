

execute unless entity @e[tag=!notick,name=vilf,distance=0..100] run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["vil"],CustomName:'{"text":"vilf"}'}
execute unless entity @e[tag=!notick,name=vilf2,distance=0..100] run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["vil"],CustomName:'{"text":"vilf2"}'}
execute unless entity @e[tag=!notick,name=vilf3,distance=0..100] run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["vil"],CustomName:'{"text":"vilf3"}'}
spreadplayers ~ ~ 1 50 false @e[tag=!notick,name=vilf,tag=vil]
spreadplayers ~ ~ 1 50 false @e[tag=!notick,name=vilf2,tag=vil]
spreadplayers ~ ~ 1 50 false @e[tag=!notick,name=vilf3,tag=vil]