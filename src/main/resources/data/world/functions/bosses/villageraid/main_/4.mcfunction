
execute if entity @e[name=dmain,type=marker,scores={gameruleWork=1..1}] run gamerule doPatrolSpawning true
execute if entity @e[name=dmain,type=marker,scores={gameruleWork=0..0}] run gamerule doPatrolSpawning false