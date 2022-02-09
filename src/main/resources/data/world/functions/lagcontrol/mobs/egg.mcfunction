
function world:lagcontrol/mobs/egg_/0
execute unless entity @e[name=dmain,scores={egg_max=0..}] run scoreboard players set @e[name=dmain] egg_max 50 
function world:lagcontrol/mobs/egg_/2
execute if entity @e[name=dmain,scores={egg_ent=1..}] run function world:lagcontrol/mobs/egg_/3