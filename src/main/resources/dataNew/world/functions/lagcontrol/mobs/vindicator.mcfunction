
function world:lagcontrol/mobs/vindicator.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={vindicator_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] vindicator_max 50 
function world:lagcontrol/mobs/vindicator.0/2
execute if entity @e[tag=dmain,scores={vindicator_ent=1..}] run function world:lagcontrol/mobs/vindicator.0/3