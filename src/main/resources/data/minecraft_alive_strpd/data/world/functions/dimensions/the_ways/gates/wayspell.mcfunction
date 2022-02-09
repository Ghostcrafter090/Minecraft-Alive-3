
scoreboard players add @e[name=waygate,scores={regate=1..1}] regatetime 1
execute as @e[name=waygate,scores={regate=1..1}] run function minecraft_alive_strpd:data/world/functions/dimensions/the_ways/gates/wayspell_/1
execute as @e[name=waygate,scores={regate=0..1}] at @s if entity @s[scores={regatetime=179..}] run scoreboard players set @s regatetime 0
execute as @e[name=waygate,scores={regate=1..1}] run function minecraft_alive_strpd:data/world/functions/dimensions/the_ways/gates/wayspell_/3
scoreboard players add @e[name=waywaygate,scores={regate=1..1}] regatetime 1
execute as @e[name=waywaygate,scores={regate=1..1}] run function minecraft_alive_strpd:data/world/functions/dimensions/the_ways/gates/wayspell_/5
execute as @e[name=waywaygate,scores={regate=0..1}] at @s if entity @s[scores={regatetime=179..}] run scoreboard players set @s regatetime 0
execute as @e[name=waywaygate,scores={regate=1..1}] run function minecraft_alive_strpd:data/world/functions/dimensions/the_ways/gates/wayspell_/7