
function world:lagcontrol/mobs/illusioner_/0
execute unless entity @e[name=dmain,scores={illusioner_max=0..}] run scoreboard players set @e[name=dmain] illusioner_max 50 
function world:lagcontrol/mobs/illusioner_/2
execute if entity @e[name=dmain,scores={illusioner_ent=1..}] run function world:lagcontrol/mobs/illusioner_/3