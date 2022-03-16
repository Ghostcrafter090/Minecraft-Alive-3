
function world:lagcontrol/mobs/evoker.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={evoker_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] evoker_max 50 
function world:lagcontrol/mobs/evoker.0/2
execute if entity @e[tag=dmain,scores={evoker_ent=1..}] run function world:lagcontrol/mobs/evoker.0/3