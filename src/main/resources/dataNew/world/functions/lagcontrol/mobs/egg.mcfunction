
function world:lagcontrol/mobs/egg.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={egg_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] egg_max 50 
function world:lagcontrol/mobs/egg.0/2
execute if entity @e[tag=dmain,scores={egg_ent=1..}] run function world:lagcontrol/mobs/egg.0/3