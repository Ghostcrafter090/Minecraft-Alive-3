
execute as @e[tag=!notick,type=end_crystal] at @s unless entity @e[tag=!notick,type=marker,tag=crystaltrack,distance=0..1] run summon marker ~ ~ ~ {CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["crystaltrack"],CustomName:'{"text":"crystaltrack"}'}
execute as @e[type=marker,tag=crystaltrack] run function world:extras/phantoms/crystal.0/1