
function world:lagcontrol/mobs/evoker_/0
execute unless entity @e[name=dmain,scores={evoker_max=0..}] run scoreboard players set @e[name=dmain] evoker_max 50 
function world:lagcontrol/mobs/evoker_/2
execute if entity @e[name=dmain,scores={evoker_ent=1..}] run function world:lagcontrol/mobs/evoker_/3