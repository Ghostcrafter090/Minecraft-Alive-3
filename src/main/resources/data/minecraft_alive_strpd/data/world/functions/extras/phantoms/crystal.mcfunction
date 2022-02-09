
execute as @e[type=end_crystal] at @s unless entity @e[tag=crystaltrack,distance=0..1] run summon marker ~ ~ ~ {CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["crystaltrack"],CustomName:'{"text":"crystaltrack"}'}
execute as @e[tag=crystaltrack] run function minecraft_alive_strpd:data/world/functions/extras/phantoms/crystal_/1