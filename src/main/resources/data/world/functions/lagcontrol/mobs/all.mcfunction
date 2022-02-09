
function world:lagcontrol/mobs/all_/0
execute unless entity @e[name=dmain,scores={all_max=0..}] run scoreboard players set @e[name=dmain] all_max 400
function world:lagcontrol/mobs/all_/2
execute if entity @e[name=dmain,scores={all_ent=1..}] run function world:lagcontrol/mobs/all_/3