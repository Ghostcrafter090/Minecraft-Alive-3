
function world:lagcontrol/mobs/horse.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={horse_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] horse_max 30 
function world:lagcontrol/mobs/horse.0/2
execute if entity @e[tag=dmain,scores={horse_ent=1..}] run function world:lagcontrol/mobs/horse.0/3