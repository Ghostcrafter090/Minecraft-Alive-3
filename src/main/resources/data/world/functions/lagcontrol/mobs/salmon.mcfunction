
function world:lagcontrol/mobs/salmon_/0
execute unless entity @e[name=dmain,scores={salmon_max=0..}] run scoreboard players set @e[name=dmain] salmon_max 50 
function world:lagcontrol/mobs/salmon_/2
execute if entity @e[name=dmain,scores={salmon_ent=1..}] run function world:lagcontrol/mobs/salmon_/3