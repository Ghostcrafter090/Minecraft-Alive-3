
function world:lagcontrol/mobs/silverfish.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={silverfish_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] silverfish_max 50 
function world:lagcontrol/mobs/silverfish.0/2
execute if entity @e[tag=dmain,scores={silverfish_ent=1..}] run function world:lagcontrol/mobs/silverfish.0/3