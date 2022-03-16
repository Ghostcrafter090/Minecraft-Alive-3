scoreboard players set @e[name=dmain,type=marker] seed1 300000
execute if entity @a[scores={dimension=19..19}] if entity @e[type=marker,name=dmain,scores={enableGates=1..1}] run function world:dimensions/the_ways/gates/portalspawn
execute if entity @a[scores={dimension=11..11}] if entity @e[type=marker,name=dmain,scores={enableMachinShi=1..1}] run function world:dimensions/the_ways/machin_shin/machin_shin
execute if entity @e[type=marker,name=dmain,scores={enableGates=1..1}] as @a at @s if entity @e[name=waygate,distance=0..45] run function world:dimensions/the_ways/gates/waygate
execute if entity @e[type=marker,name=dmain,scores={enableGates=1..1}] as @a at @s if entity @e[name=waywaygate,distance=0..45] run function world:dimensions/the_ways/gates/waygate