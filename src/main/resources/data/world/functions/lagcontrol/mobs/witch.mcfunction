
function world:lagcontrol/mobs/witch_/0
execute unless entity @e[name=dmain,scores={witch_max=0..}] run scoreboard players set @e[name=dmain] witch_max 50 
function world:lagcontrol/mobs/witch_/2
execute if entity @e[name=dmain,scores={witch_ent=1..}] run function world:lagcontrol/mobs/witch_/3