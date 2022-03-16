
execute if entity @a[scores={regulate=1..1}] run function world:mothernature/blockdecay/sec5/parta
execute if entity @a[scores={regulate=0..0}] run function world:mothernature/blockdecay/sec5/partb
execute at @e[tag=!notick,tag=decayPoint] run function world:mothernature/blockdecay/sec5/main.0/2
function world:mothernature/blockdecay/sec5/main.0/3
execute if entity @a[scores={sapkill=500..}] run function world:mothernature/blockdecay/sec5/main.0/4
execute if entity @a[scores={sapkill=501..}] run scoreboard players set @a sapkill 0