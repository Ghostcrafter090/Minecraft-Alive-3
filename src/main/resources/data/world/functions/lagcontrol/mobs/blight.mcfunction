
function world:lagcontrol/mobs/blight_/0
execute unless entity @e[name=dmain,scores={blight_max=0..}] run scoreboard players set @e[name=dmain] blight_max 50 
function world:lagcontrol/mobs/blight_/2
execute if entity @e[name=dmain,scores={blight_ent=1..}] run function world:lagcontrol/mobs/blight_/3