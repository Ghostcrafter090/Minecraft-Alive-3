
function world:lagcontrol/mobs/fireball_/0
execute unless entity @e[name=dmain,scores={fireball_max=0..}] run scoreboard players set @e[name=dmain] fireball_max 50 
function world:lagcontrol/mobs/fireball_/2
execute if entity @e[name=dmain,scores={fireball_ent=1..}] run function world:lagcontrol/mobs/fireball_/3