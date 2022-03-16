# Main
execute as @e[tag=templedeath,tag=!spawned] at @s run particle minecraft:electric_spark ~ ~10 ~ 0 30 0 0.1 100 force
execute as @e[tag=templedeath,tag=!spawned] at @s unless entity @e[tag=spinner,distance=0..6] run summon marker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["spinner"]}
execute as @e[tag=spinner] at @s run tp @s ~ ~0.2 ~ ~8 ~
execute as @e[tag=spinner,type=marker] at @s positioned ^ ^ ^3 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 10 force
execute as @e[tag=templedeath,tag=!started] run playsound minecraft:music_disc.13 master @a ~ ~ ~ 20 0.1
execute as @e[tag=templedeath,tag=!started] run playsound minecraft:map.ambience.deepcave master @a ~ ~ ~ 20 0.1
execute as @e[tag=templedeath,tag=!started] run playsound minecraft:map.ambience.end master @a ~ ~ ~ 20 0.1
execute as @e[tag=templedeath,tag=!started] run tag @s add started