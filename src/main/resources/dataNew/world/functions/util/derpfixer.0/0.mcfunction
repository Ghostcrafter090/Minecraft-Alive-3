


execute at @s store result score @s derp_ent if entity @e[tag=!notick,tag=decayPoint,type=marker,distance=0..300]
execute as @s store result score @s player_ent if entity @a[distance=0..300]