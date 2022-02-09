
execute at @s positioned ~ ~-19 ~ if entity @e[name=dmain,scores={regu=10..}] run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 0.1 0.1
execute at @s run particle minecraft:enchant ~ ~-19 ~ 0 2 1 0.1 300 force
execute at @s run particle minecraft:portal ~ ~-19 ~ 0 2 1 0.1 30 force