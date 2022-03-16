
function world:lagcontrol/mobs/falling_bl.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={falling_bl_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] falling_bl_max 30 
function world:lagcontrol/mobs/falling_bl.0/2
execute if entity @e[tag=dmain,scores={falling_bl_ent=1..}] run function world:lagcontrol/mobs/falling_bl.0/3