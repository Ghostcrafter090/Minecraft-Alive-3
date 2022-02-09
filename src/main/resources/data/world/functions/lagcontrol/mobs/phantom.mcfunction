
function world:lagcontrol/mobs/phantom_/0
execute unless entity @e[name=dmain,scores={phantom_max=0..}] run scoreboard players set @e[name=dmain] phantom_max 50 
function world:lagcontrol/mobs/phantom_/2
execute if entity @e[name=dmain,scores={phantom_ent=1..}] run function world:lagcontrol/mobs/phantom_/3