
tag @e[type=item,tag=fire_key_shard,distance=0..5] add dimensional
execute if entity @e[name=dmain,type=marker,scores={witherBool=1..1}]
scoreboard players add @e[tag=fire_key_spawn,type=marker] timeAlive 1