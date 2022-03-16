
scoreboard players set @e[tag=!notick,tag=dmain,type=marker] guardBool 1
execute as @e[tag=!notick,type=item,tag=water_key_shard] run function world:bosses/guardian/start.0/4.1/1
kill @e[tag=!notick,type=item]