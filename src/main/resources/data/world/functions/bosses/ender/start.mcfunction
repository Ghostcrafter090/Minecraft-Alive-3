
function world:bosses/ender/start_/0
execute if entity @e[name=dmain,type=marker,scores={kyacount=..20}] as @e[tag=!kyaeffect,sort=random,limit=1] run tag @s add kyaeffect
execute store result score @e[name=dmain,type=marker] kyacount if entity @e[tag=kyaeffect]
execute as @e[tag=kya] run function world:bosses/ender/start_/3
execute as @e[tag=line] at @s run particle minecraft:portal ~ ~ ~ 0 0 0 0 10 force
execute as @e[tag=effectline] at @s run particle minecraft:glow ~ ~ ~ 0 0 0 0.0 10 force
execute as @e[tag=line] run function world:bosses/ender/start_/6
execute if entity @e[name=dmain,type=marker,scores={atic=15..15}] as @e[tag=line] at @s as @e[tag=effectline,distance=0..1] run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 1 0.1
execute as @e[tag=line] at @s if entity @e[tag=kya,distance=0..1] facing entity @e[tag=defunct_end_key,limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.02 ~ ~
execute as @e[tag=defunct_end_key] run function world:bosses/ender/start_/9
execute unless entity @e[tag=!effectend] run function world:bosses/ender/start_/10
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] run function world:bosses/ender/start_/11
function world:bosses/ender/start_/12