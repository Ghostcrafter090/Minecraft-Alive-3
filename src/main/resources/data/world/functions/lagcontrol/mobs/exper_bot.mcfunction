
function world:lagcontrol/mobs/exper_bot_/0
execute unless entity @e[name=dmain,scores={exper_bot_max=0..}] run scoreboard players set @e[name=dmain] exper_bot_max 50 
function world:lagcontrol/mobs/exper_bot_/2
execute if entity @e[name=dmain,scores={exper_bot_ent=1..}] run function world:lagcontrol/mobs/exper_bot_/3