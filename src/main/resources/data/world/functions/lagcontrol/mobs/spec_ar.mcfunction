
function world:lagcontrol/mobs/spec_ar_/0
execute unless entity @e[name=dmain,scores={spec_ar_max=0..}] run scoreboard players set @e[name=dmain] spec_ar_max 50 
function world:lagcontrol/mobs/spec_ar_/2
execute if entity @e[name=dmain,scores={spec_ar_ent=1..}] run function world:lagcontrol/mobs/spec_ar_/3