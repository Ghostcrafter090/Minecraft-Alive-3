
function world:lagcontrol/mobs/falling_bl_/0
execute unless entity @e[name=dmain,scores={falling_bl_max=0..}] run scoreboard players set @e[name=dmain] falling_bl_max 30 
function world:lagcontrol/mobs/falling_bl_/2
execute if entity @e[name=dmain,scores={falling_bl_ent=1..}] run function world:lagcontrol/mobs/falling_bl_/3