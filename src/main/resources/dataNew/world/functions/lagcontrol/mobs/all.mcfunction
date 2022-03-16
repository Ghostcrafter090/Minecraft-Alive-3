
function world:lagcontrol/mobs/all.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={all_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] all_max 400
function world:lagcontrol/mobs/all.0/2
execute if entity @e[tag=dmain,scores={all_ent=1..}] run function world:lagcontrol/mobs/all.0/3