
function world:lagcontrol/mobs/illusioner.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={illusioner_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] illusioner_max 50 
function world:lagcontrol/mobs/illusioner.0/2
execute if entity @e[tag=dmain,scores={illusioner_ent=1..}] run function world:lagcontrol/mobs/illusioner.0/3