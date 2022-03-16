
function world:lagcontrol/mobs/sawayig.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={sawayig_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] sawayig_max 30
function world:lagcontrol/mobs/sawayig.0/2
execute if entity @e[tag=dmain,scores={sawayig_ent=1..}] run function world:lagcontrol/mobs/sawayig.0/3