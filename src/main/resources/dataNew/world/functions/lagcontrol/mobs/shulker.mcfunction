
function world:lagcontrol/mobs/shulker.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={shulker_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] shulker_max 50 
function world:lagcontrol/mobs/shulker.0/2
execute if entity @e[tag=dmain,scores={shulker_ent=1..}] run function world:lagcontrol/mobs/shulker.0/3