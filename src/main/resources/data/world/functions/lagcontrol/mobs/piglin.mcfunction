
function world:lagcontrol/mobs/piglin_/0
execute unless entity @e[name=dmain,scores={piglin_max=0..}] run scoreboard players set @e[name=dmain] piglin_max 50 
function world:lagcontrol/mobs/piglin_/2
execute if entity @e[name=dmain,scores={piglin_ent=1..}] run function world:lagcontrol/mobs/piglin_/3