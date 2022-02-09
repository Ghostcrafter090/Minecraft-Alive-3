
function world:bosses/ender/main_/0
execute as @e[name=dmain,type=marker] unless entity @s[scores={disableEnd=0..1}] run scoreboard players set @s disableEnd 1
execute if entity @e[name=dmain,type=marker,scores={disableEnd=1..1}] run function world:bosses/ender/disableend
scoreboard players set @e[name=dmain,type=marker] endStartActive 0
execute as @e[tag=kya] run function world:bosses/ender/main_/4
execute unless entity @e[name=dmain,type=marker,scores={endStartActive=1..1}] run function world:bosses/ender/main_/5
scoreboard players add @e[tag=ender_key_spawn,type=marker] timeAlive 1
execute as @e[tag=ender_key_spawn,type=marker,scores={timeAlive=10..10}] at @s run summon item ~ ~ ~ {Item:{id:"mca:end_key",Count:1b},Tags:['dimensional']}
execute if entity @e[name=dmain,type=marker,scores={enderBool=1..1}] run function world:bosses/ender/effects
execute as @e[type=ender_dragon,nbt={DragonPhase:9},tag=!music] run function world:bosses/ender/main_/9
execute if entity @e[name=dmain,type=marker,scores={enderBool=1..1}] if entity @a[advancements={minecraft:end/kill_dragon=true}] run function world:bosses/ender/reset
execute unless entity @e[name=dmain,type=marker,scores={enderBool=1..1}] unless entity @e[name=dmain,type=marker,scores={disableEnd=1..1}] run effect give @e[type=phantom] wither 10 1