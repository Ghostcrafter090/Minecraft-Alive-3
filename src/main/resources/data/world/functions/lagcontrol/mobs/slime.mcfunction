
function world:lagcontrol/mobs/slime_/0
execute unless entity @e[name=dmain,scores={slime_max=0..}] run scoreboard players set @e[name=dmain] slime_max 50 
function world:lagcontrol/mobs/slime_/2
execute if entity @e[name=dmain,scores={slime_ent=1..}] run function world:lagcontrol/mobs/slime_/3