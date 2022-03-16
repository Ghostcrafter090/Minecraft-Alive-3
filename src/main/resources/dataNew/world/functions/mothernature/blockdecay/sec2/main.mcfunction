
execute at @e[tag=!notick,tag=decayPoint,type=marker] run function world:mothernature/blockdecay/sec2/main.0/0
execute as @a[scores={regulate=1..1}] run function world:mothernature/blockdecay/sec2/parta
execute as @a[scores={regulate=0..0}] run function world:mothernature/blockdecay/sec2/partb