
execute in minecraft:the_end as @a[distance=0..2000] run effect give @s minecraft:hunger 10 10
execute as @a run function world:bosses/ender/disableend.0/1
execute in minecraft:the_end run function world:bosses/ender/disableend.0/2
execute as @e[tag=!notick,type=minecraft:eye_of_ender] run function world:bosses/ender/disableend.0/3