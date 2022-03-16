
function world:lagcontrol/mobs/phantom.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={phantom_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] phantom_max 50 
function world:lagcontrol/mobs/phantom.0/2
execute if entity @e[tag=dmain,scores={phantom_ent=1..}] run function world:lagcontrol/mobs/phantom.0/3