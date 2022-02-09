
function world:dimensions/the_ways/gates/waygate_/0
execute at @a run function world:dimensions/the_ways/gates/waygate_/1
execute as @e[name=waygate,type=marker,scores={gateopen=1..2},limit=5,sort=random] run function world:dimensions/the_ways/gates/waygate_/2
execute as @e[name=waygate,type=marker,scores={gateopen=1..1},limit=5,sort=random] at @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 9 0.1
execute as @e[name=waygate,type=marker,scores={gateopen=1..2}] run function world:dimensions/the_ways/gates/waygate_/4
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={gateopen=1..2},limit=5,sort=random] run function world:dimensions/the_ways/gates/waygate_/5
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={gateopen=1..1}] at @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 9 0.1
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={gateopen=1..2}] run function world:dimensions/the_ways/gates/waygate_/7
execute as @e[name=waygate,type=marker,scores={gateopen=1..1}] at @s run scoreboard players set @s gateopen 2
execute at @a run function world:dimensions/the_ways/gates/waygate_/9
execute as @e[type=!item,type=!falling_block,name=waywaygate,sort=random,limit=1] run function world:dimensions/the_ways/gates/waygate_/10
execute as @e[name=waygate,type=marker] at @s if block ~ ~-19 ~ nether_bricks if block ~ ~-18 ~ nether_bricks if block ~ ~-18 ~1 nether_bricks if block ~ ~-18 ~-1 nether_bricks if block ~ ~-17 ~ minecraft:player_head{SkullOwner:{Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTc2MWEzODMxNTkyZWU0YTA4ZmYwOWQ3NTdlZDgyZWM5YjBmZDhhZGI3ZWY4MmRhMmI2ODZjM2M5YzY2ZWEifX19"}]}}} if block ~ ~-19 ~1 torch if block ~ ~-19 ~-1 torch positioned ~-1 ~-18 ~1 if entity @e[type=item_frame] run scoreboard players set @s regate 1
execute if entity @e[name=waygate,type=marker,scores={regate=1..1}] run function world:dimensions/the_ways/gates/wayspell
execute as @e[type=!item,type=!falling_block,name=waywaygate] at @s if block ~ ~-19 ~ nether_bricks if block ~ ~-18 ~ nether_bricks if block ~ ~-18 ~1 nether_bricks if block ~ ~-18 ~-1 nether_bricks if block ~ ~-17 ~ minecraft:player_head{SkullOwner:{Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTc2MWEzODMxNTkyZWU0YTA4ZmYwOWQ3NTdlZDgyZWM5YjBmZDhhZGI3ZWY4MmRhMmI2ODZjM2M5YzY2ZWEifX19"}]}}} if block ~ ~-19 ~1 torch if block ~ ~-19 ~-1 torch positioned ~-1 ~-18 ~1 if entity @e[type=item_frame] run scoreboard players set @s regate 1