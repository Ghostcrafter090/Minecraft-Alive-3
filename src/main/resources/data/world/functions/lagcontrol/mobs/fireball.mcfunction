
function world:lagcontrol/mobs/fireball.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={fireball_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] fireball_max 50 
function world:lagcontrol/mobs/fireball.0/2
execute if entity @e[tag=dmain,scores={fireball_ent=1..}] run function world:lagcontrol/mobs/fireball.0/3