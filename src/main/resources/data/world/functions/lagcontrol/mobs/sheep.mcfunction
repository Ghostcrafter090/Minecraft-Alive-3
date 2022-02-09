
function world:lagcontrol/mobs/sheep_/0
execute unless entity @e[name=dmain,scores={sheep_max=0..}] run scoreboard players set @e[name=dmain] sheep_max 50 
function world:lagcontrol/mobs/sheep_/2
execute if entity @e[name=dmain,scores={sheep_ent=1..}] run function world:lagcontrol/mobs/sheep_/3