
execute at @s facing entity @e[tag=kya] eyes run tp @s ^ ^ ^0.01 ~ ~
execute at @s facing entity @e[tag=kya] eyes if entity @e[name=dmain,type=marker,scores={atic=10..10}] run playsound minecraft:ambient.warped_forest.additions master @a ~ ~ ~ 1 0.1
execute at @s facing entity @e[tag=kya] eyes if entity @e[name=dmain,type=marker,scores={atic=10..10}] run playsound minecraft:ambient.nether_wastes.additions master @a ~ ~ ~ 1 0.1
execute at @s as @e[tag=effectline,distance=0..1] run tp @s ~ ~ ~ ~ ~