
function world:lagcontrol/mobs/sheep.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={sheep_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] sheep_max 50 
function world:lagcontrol/mobs/sheep.0/2
execute if entity @e[tag=dmain,scores={sheep_ent=1..}] run function world:lagcontrol/mobs/sheep.0/3