
function world:lagcontrol/mobs/piglin.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={piglin_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] piglin_max 50 
function world:lagcontrol/mobs/piglin.0/2
execute if entity @e[tag=dmain,scores={piglin_ent=1..}] run function world:lagcontrol/mobs/piglin.0/3