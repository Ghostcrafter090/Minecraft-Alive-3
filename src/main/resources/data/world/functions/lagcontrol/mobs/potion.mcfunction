
function world:lagcontrol/mobs/potion_/0
execute unless entity @e[name=dmain,scores={potion_max=0..}] run scoreboard players set @e[name=dmain] potion_max 50 
function world:lagcontrol/mobs/potion_/2
execute if entity @e[name=dmain,scores={potion_ent=1..}] run function world:lagcontrol/mobs/potion_/3