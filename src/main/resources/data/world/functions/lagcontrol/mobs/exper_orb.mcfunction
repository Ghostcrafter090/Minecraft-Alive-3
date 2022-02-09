
function world:lagcontrol/mobs/exper_orb_/0
execute unless entity @e[name=dmain,scores={exper_orb_max=0..}] run scoreboard players set @e[name=dmain] exper_orb_max 50 
function world:lagcontrol/mobs/exper_orb_/2
execute if entity @e[name=dmain,scores={exper_orb_ent=1..}] run function world:lagcontrol/mobs/exper_orb_/3