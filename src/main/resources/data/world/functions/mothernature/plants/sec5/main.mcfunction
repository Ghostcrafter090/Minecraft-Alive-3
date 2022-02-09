
execute if entity @a[scores={regulate=1..1}] run function world:mothernature/blockdecay/sec5/parta
execute if entity @a[scores={regulate=0..0}] run function world:mothernature/blockdecay/sec5/partb
execute at @e[name=derp] run function world:mothernature/plants/sec5/main_/2
function world:mothernature/plants/sec5/main_/3
execute if entity @a[scores={sapkill=500..}] run function world:mothernature/plants/sec5/main_/4
execute if entity @a[scores={sapkill=501..}] run scoreboard players set @a sapkill 0