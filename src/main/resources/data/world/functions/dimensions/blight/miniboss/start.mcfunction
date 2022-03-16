
execute as @e[tag=!notick,tag=templedeath,tag=!spawned] run function world:dimensions/blight/miniboss/start.0/0
execute as @e[tag=spinner] at @s run tp @s ~ ~0.2 ~ ~8 ~
execute as @e[tag=spinner,type=marker] at @s positioned ^ ^ ^3 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 10 force
execute as @e[tag=templedeath,tag=!started] run function world:dimensions/blight/miniboss/start.0/3