
function world:bosses/wither/effects.0/0
execute store result score @e[tag=!notick,tag=dmain,type=marker] timeGet run time query daytime
execute unless entity @e[tag=dmain,type=marker,scores={timeGet=5950..6050}] run time add 10
execute if entity @e[tag=dmain,type=marker,scores={timeGet=5950..6050}] run time set 6000
execute as @a run function world:bosses/wither/effects.0/4
execute if entity @e[tag=dmain,type=marker,scores={atic=15..15}] as @e[type=piglin] run data modify entity @s IsImmuneToZombification set value 1b
execute if entity @e[tag=dmain,type=marker,scores={atic=1..1}] run function world:bosses/wither/effects.0/6
execute as @a[scores={dimension=19..19}] at @s unless entity @e[type=marker,tag=portal,distance=0..200] run summon marker ~ ~-20 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["portal"],CustomName:'{"text":"portal"}'}
execute as @e[type=marker,tag=portal,tag=!finished] run function world:bosses/wither/effects.0/8
execute as @a run function world:bosses/wither/effects.0/9
scoreboard players set @e[tag=dmain,type=marker] withEffActive 1