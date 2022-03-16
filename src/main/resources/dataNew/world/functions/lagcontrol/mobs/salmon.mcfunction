
function world:lagcontrol/mobs/salmon.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={salmon_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] salmon_max 50 
function world:lagcontrol/mobs/salmon.0/2
execute if entity @e[tag=dmain,scores={salmon_ent=1..}] run function world:lagcontrol/mobs/salmon.0/3