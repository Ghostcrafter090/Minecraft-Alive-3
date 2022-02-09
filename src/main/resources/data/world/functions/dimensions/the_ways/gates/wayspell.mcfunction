
scoreboard players add @e[name=waygate,type=marker,scores={regate=1..1}] regatetime 1
execute as @e[name=waygate,type=marker,scores={regate=1..1}] run function world:dimensions/the_ways/gates/wayspell_/1
execute as @e[name=waygate,type=marker,scores={regate=0..1}] at @s if entity @s[scores={regatetime=179..}] run scoreboard players set @s regatetime 0
execute as @e[name=waygate,type=marker,scores={regate=1..1}] run function world:dimensions/the_ways/gates/wayspell_/3
scoreboard players add @e[type=!item,type=!falling_block,name=waywaygate,scores={regate=1..1}] regatetime 1
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={regate=1..1}] run function world:dimensions/the_ways/gates/wayspell_/5
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={regate=0..1}] at @s if entity @s[scores={regatetime=179..}] run scoreboard players set @s regatetime 0
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={regate=1..1}] run function world:dimensions/the_ways/gates/wayspell_/7