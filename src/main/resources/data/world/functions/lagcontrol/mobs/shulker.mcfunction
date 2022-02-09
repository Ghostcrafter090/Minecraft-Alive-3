
function world:lagcontrol/mobs/shulker_/0
execute unless entity @e[name=dmain,scores={shulker_max=0..}] run scoreboard players set @e[name=dmain] shulker_max 50 
function world:lagcontrol/mobs/shulker_/2
execute if entity @e[name=dmain,scores={shulker_ent=1..}] run function world:lagcontrol/mobs/shulker_/3