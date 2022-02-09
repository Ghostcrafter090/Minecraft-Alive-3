
function world:lagcontrol/mobs/horse_/0
execute unless entity @e[name=dmain,scores={horse_max=0..}] run scoreboard players set @e[name=dmain] horse_max 30 
function world:lagcontrol/mobs/horse_/2
execute if entity @e[name=dmain,scores={horse_ent=1..}] run function world:lagcontrol/mobs/horse_/3