

tag @e[tag=!notick,type=item,tag=fire_key_shard,distance=0..5] add dimensional
execute if entity @e[tag=!notick,tag=dmain,type=marker,scores={witherBool=1..1}]
scoreboard players add @e[tag=!notick,tag=fire_key_spawn,type=marker] timeAlive 1