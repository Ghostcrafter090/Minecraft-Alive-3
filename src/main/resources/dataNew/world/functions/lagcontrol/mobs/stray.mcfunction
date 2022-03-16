
function world:lagcontrol/mobs/stray.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={stray_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] stray_max 50 
function world:lagcontrol/mobs/stray.0/2
execute if entity @e[tag=dmain,scores={stray_ent=1..}] run function world:lagcontrol/mobs/stray.0/3