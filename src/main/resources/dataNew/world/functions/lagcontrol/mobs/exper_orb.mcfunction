
function world:lagcontrol/mobs/exper_orb.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={exper_orb_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] exper_orb_max 50 
function world:lagcontrol/mobs/exper_orb.0/2
execute if entity @e[tag=dmain,scores={exper_orb_ent=1..}] run function world:lagcontrol/mobs/exper_orb.0/3