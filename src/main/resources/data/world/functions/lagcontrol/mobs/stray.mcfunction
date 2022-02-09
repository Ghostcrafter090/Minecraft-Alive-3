
function world:lagcontrol/mobs/stray_/0
execute unless entity @e[name=dmain,scores={stray_max=0..}] run scoreboard players set @e[name=dmain] stray_max 50 
function world:lagcontrol/mobs/stray_/2
execute if entity @e[name=dmain,scores={stray_ent=1..}] run function world:lagcontrol/mobs/stray_/3