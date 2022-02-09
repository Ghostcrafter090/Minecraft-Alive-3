
function world:lagcontrol/mobs/drag_fire_/0
execute unless entity @e[name=dmain,scores={drag_fire_max=0..}] run scoreboard players set @e[name=dmain] drag_fire_max 50 
function world:lagcontrol/mobs/drag_fire_/2
execute if entity @e[name=dmain,scores={drag_fire_ent=1..}] run function world:lagcontrol/mobs/drag_fire_/3