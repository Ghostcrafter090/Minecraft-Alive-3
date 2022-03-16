
scoreboard players set @e[tag=!notick,tag=dmain,type=marker] seed1 300000
execute if entity @a[scores={dimension=19..19}] if entity @e[type=marker,tag=dmain,scores={enableGates=1..1}] run function world:dimensions/the_ways/gates/portalspawn
execute if entity @a[scores={dimension=11..11}] if entity @e[type=marker,tag=dmain,scores={enableMachinShi=1..1}] run function world:dimensions/the_ways/machin_shin/machin_shin
execute if entity @e[type=marker,tag=dmain,scores={enableGates=1..1}] run function world:dimensions/the_ways/main.0/3