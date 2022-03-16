

tag @e[tag=!notick,type=item,tag=water_key_shard,distance=0..5] add dimensional
execute if entity @e[tag=!notick,tag=dmain,type=marker,scores={guardBool=1..1}]
scoreboard players add @e[tag=!notick,tag=water_key_spawn,type=marker] timeAlive 1