
function world:lagcontrol/mobs/arrow_/0
execute unless entity @e[name=dmain,scores={arrow_max=0..}] run scoreboard players set @e[name=dmain] arrow_max 50 
function world:lagcontrol/mobs/arrow_/2
execute if entity @e[name=dmain,scores={arrow_ent=1..}] run function world:lagcontrol/mobs/arrow_/3