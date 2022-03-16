
scoreboard players set @e[tag=!notick,tag=dmain,type=marker] witherBool 1
execute as @e[tag=!notick,type=item,tag=fire_key_shard] run function world:bosses/wither/start.0/4.1/1
kill @e[tag=!notick,type=item]