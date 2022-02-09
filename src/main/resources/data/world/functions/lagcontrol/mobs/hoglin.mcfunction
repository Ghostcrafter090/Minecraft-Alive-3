
function world:lagcontrol/mobs/hoglin_/0
execute unless entity @e[name=dmain,scores={hoglin_max=0..}] run scoreboard players set @e[name=dmain] hoglin_max 50 
function world:lagcontrol/mobs/hoglin_/2
execute if entity @e[name=dmain,scores={hoglin_ent=1..}] run function world:lagcontrol/mobs/hoglin_/3