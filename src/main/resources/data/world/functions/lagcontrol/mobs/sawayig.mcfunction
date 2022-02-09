
function world:lagcontrol/mobs/sawayig_/0
execute unless entity @e[name=dmain,scores={sawayig_max=0..}] run scoreboard players set @e[name=dmain] sawayig_max 30
function world:lagcontrol/mobs/sawayig_/2
execute if entity @e[name=dmain,scores={sawayig_ent=1..}] run function world:lagcontrol/mobs/sawayig_/3