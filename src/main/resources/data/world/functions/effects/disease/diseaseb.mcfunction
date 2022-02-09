
scoreboard objectives add DTN dummy
execute as @a run function world:effects/disease/diseaseb_/1
function world:effects/disease/diseaseb_/2
execute as @a run function world:effects/disease/diseaseb_/3
function world:effects/disease/diseaseb_/4
execute as @a[scores={EF=1..}] run function world:effects/disease/diseaseb_/5
function world:effects/disease/diseaseb_/6
execute if entity @a[scores={reguz=4..4}] if entity @e[type=zombie] run function world:effects/disease/spreaders/zombie