
function world:lagcontrol/mobs/potion.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={potion_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] potion_max 50 
function world:lagcontrol/mobs/potion.0/2
execute if entity @e[tag=dmain,scores={potion_ent=1..}] run function world:lagcontrol/mobs/potion.0/3