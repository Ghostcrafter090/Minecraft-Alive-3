
function world:lagcontrol/mobs/with_skul.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={with_skul_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] with_skul_max 50 
function world:lagcontrol/mobs/with_skul.0/2
execute if entity @e[tag=dmain,scores={with_skul_ent=1..}] run function world:lagcontrol/mobs/with_skul.0/3