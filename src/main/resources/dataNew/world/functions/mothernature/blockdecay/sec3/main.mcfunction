
execute as @a[scores={regulate=1..1}] run function world:mothernature/blockdecay/sec3/parta
execute as @a[scores={regulate=0..0}] run function world:mothernature/blockdecay/sec3/partb
execute at @e[tag=!notick,tag=decayPoint,type=marker] run function world:mothernature/blockdecay/sec3/main.0/2