
execute as @a run function minecraft_alive_strpd:data/world/functions/effects/disease/diseaseb_/0
function minecraft_alive_strpd:data/world/functions/effects/disease/diseaseb_/1
execute as @a[scores={EF=1..}] run function minecraft_alive_strpd:data/world/functions/effects/disease/diseaseb_/2
execute as @a[scores={reguz=5..}] run scoreboard players set @a reguz 0
function minecraft_alive_strpd:data/world/functions/effects/disease/diseaseb_/4
execute if entity @a[scores={reguz=4..4}] if entity @e[type=zombie] run function world:effects/disease/spreaders/zombie