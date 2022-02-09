
execute in minecraft:the_end as @a[distance=0..2000] run effect give @s minecraft:hunger 10 10
execute as @a run function world:bosses/ender/disableend_/1
execute in minecraft:the_end run function world:bosses/ender/disableend_/2
execute as @e[type=minecraft:eye_of_ender] run function world:bosses/ender/disableend_/3