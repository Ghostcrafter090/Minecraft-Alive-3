
function world:lagcontrol/mobs/vindicator_/0
execute unless entity @e[name=dmain,scores={vindicator_max=0..}] run scoreboard players set @e[name=dmain] vindicator_max 50 
function world:lagcontrol/mobs/vindicator_/2
execute if entity @e[name=dmain,scores={vindicator_ent=1..}] run function world:lagcontrol/mobs/vindicator_/3