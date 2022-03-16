

execute as @e[tag=!notick,type=villager,distance=0..20,tag=!curtrader] at @s facing entity @e[tag=!notick,tag=curtrader,limit=1,sort=nearest,scores={curCloseTic=460..900}] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[tag=!notick,type=villager,distance=0..20,tag=!curtrader] at @s facing entity @e[tag=!notick,tag=curtrader,limit=1,sort=nearest,scores={curCloseTic=460..900}] eyes positioned ~ ~2 ~ run particle minecraft:angry_villager ~ ~ ~ 0.5 0.5 0.5 0.1 1 force