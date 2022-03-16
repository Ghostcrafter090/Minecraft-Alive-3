
scoreboard players set @e[tag=!notick,tag=dmain,type=marker] enderBool 1
execute as @e[tag=!notick,type=item,tag=defunct_end_key] run function world:bosses/ender/start.0/11.1/1
kill @e[tag=!notick,type=item]