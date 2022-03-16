
function world:lagcontrol/mobs/blight.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={blight_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] blight_max 50 
function world:lagcontrol/mobs/blight.0/2
execute if entity @e[tag=dmain,scores={blight_ent=1..}] run function world:lagcontrol/mobs/blight.0/3