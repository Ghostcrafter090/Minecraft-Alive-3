
execute at @e[tag=!notick,tag=decayPoint,type=marker] run function world:mothernature/blockdecay/sec1/main.0/0
function world:mothernature/blockdecay/sec1/main.0/1
execute if entity @a[scores={regulate=2..}] run scoreboard players set @a regulate 0
execute at @e[tag=decayPoint,type=marker] run function world:mothernature/blockdecay/sec1/main.0/3
execute if entity @a[scores={regulate=1..1}] run function world:mothernature/blockdecay/sec1/parta
execute if entity @a[scores={regulate=0..0}] run function world:mothernature/blockdecay/sec1/partb
execute at @e[tag=decayPoint,type=marker] run function world:mothernature/blockdecay/sec1/main.0/6