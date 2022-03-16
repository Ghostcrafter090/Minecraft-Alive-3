
function world:lagcontrol/mobs/drag_fire.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={drag_fire_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] drag_fire_max 50 
function world:lagcontrol/mobs/drag_fire.0/2
execute if entity @e[tag=dmain,scores={drag_fire_ent=1..}] run function world:lagcontrol/mobs/drag_fire.0/3