
execute at @s run particle minecraft:dripping_obsidian_tear ~ ~ ~ 0 20 0 0 500 force
execute at @s if entity @e[name=dmain,type=marker,scores={atic=1..1}] run summon lightning_bolt ~ ~-40 ~
execute at @s run playsound minecraft:ambient.underwater.loop.additions.ultra_rare master @a ~ ~ ~ 20 1.5