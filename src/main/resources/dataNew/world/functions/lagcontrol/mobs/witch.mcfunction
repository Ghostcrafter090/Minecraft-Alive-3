
function world:lagcontrol/mobs/witch.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={witch_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] witch_max 50 
function world:lagcontrol/mobs/witch.0/2
execute if entity @e[tag=dmain,scores={witch_ent=1..}] run function world:lagcontrol/mobs/witch.0/3