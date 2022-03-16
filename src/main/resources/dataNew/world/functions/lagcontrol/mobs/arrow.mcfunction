
function world:lagcontrol/mobs/arrow.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={arrow_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] arrow_max 50 
function world:lagcontrol/mobs/arrow.0/2
execute if entity @e[tag=dmain,scores={arrow_ent=1..}] run function world:lagcontrol/mobs/arrow.0/3