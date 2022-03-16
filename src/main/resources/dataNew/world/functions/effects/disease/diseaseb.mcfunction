
scoreboard objectives add DTN dummy
execute as @a run function world:effects/disease/diseaseb.0/1
function world:effects/disease/diseaseb.0/2
execute as @a run function world:effects/disease/diseaseb.0/3
function world:effects/disease/diseaseb.0/4
execute as @a[scores={EF=1..}] run function world:effects/disease/diseaseb.0/5
function world:effects/disease/diseaseb.0/6
execute if entity @a[scores={reguz=4..4}] if entity @e[tag=!notick,type=zombie] run function world:effects/disease/spreaders/zombie