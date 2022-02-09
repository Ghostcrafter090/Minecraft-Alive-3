
execute as @e[name=machin_shin,type=marker] run function world:dimensions/the_ways/machin_shin/getpos
scoreboard players set @e[type=!item,type=!falling_block,name=dmain] ms_effect_clock 0