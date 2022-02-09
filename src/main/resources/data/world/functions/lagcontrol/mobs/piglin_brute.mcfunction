
function world:lagcontrol/mobs/piglin_brute_/0
execute unless entity @e[name=dmain,scores={piglin_brute_max=0..}] run scoreboard players set @e[name=dmain] piglin_brute_max 50 
function world:lagcontrol/mobs/piglin_brute_/2
execute if entity @e[name=dmain,scores={piglin_brute_ent=1..}] run function world:lagcontrol/mobs/piglin_brute_/3