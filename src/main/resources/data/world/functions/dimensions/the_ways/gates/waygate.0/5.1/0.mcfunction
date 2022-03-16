



execute positioned ~ ~-19 ~ if entity @e[tag=!notick,type=!item,type=!falling_block,tag=dmain,scores={regu=10..}] run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 0.1 0.1
particle minecraft:enchant ~ ~-19 ~ 0 2 1 0.1 300 force
particle minecraft:portal ~ ~-19 ~ 0 2 1 0.1 30 force