
function world:lagcontrol/mobs/with_skul_/0
execute unless entity @e[name=dmain,scores={with_skul_max=0..}] run scoreboard players set @e[name=dmain] with_skul_max 50 
function world:lagcontrol/mobs/with_skul_/2
execute if entity @e[name=dmain,scores={with_skul_ent=1..}] run function world:lagcontrol/mobs/with_skul_/3