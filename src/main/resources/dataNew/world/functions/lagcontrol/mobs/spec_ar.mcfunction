
function world:lagcontrol/mobs/spec_ar.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={spec_ar_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] spec_ar_max 50 
function world:lagcontrol/mobs/spec_ar.0/2
execute if entity @e[tag=dmain,scores={spec_ar_ent=1..}] run function world:lagcontrol/mobs/spec_ar.0/3