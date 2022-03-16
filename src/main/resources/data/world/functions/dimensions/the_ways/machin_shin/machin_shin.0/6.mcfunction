
execute as @e[tag=!notick,name=machin_shin,type=marker] run function world:dimensions/the_ways/machin_shin/getpos
scoreboard players set @e[tag=!notick,type=!item,type=!falling_block,tag=dmain] ms_effect_clock 0