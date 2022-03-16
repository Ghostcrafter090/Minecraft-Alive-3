


execute if entity @e[tag=!notick,tag=dmain,type=marker,scores={gameruleWork=1..1}] run gamerule doPatrolSpawning true
execute if entity @e[tag=!notick,tag=dmain,type=marker,scores={gameruleWork=0..0}] run gamerule doPatrolSpawning false