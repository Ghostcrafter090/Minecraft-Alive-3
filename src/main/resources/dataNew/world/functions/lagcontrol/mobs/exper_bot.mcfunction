
function world:lagcontrol/mobs/exper_bot.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={exper_bot_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] exper_bot_max 50 
function world:lagcontrol/mobs/exper_bot.0/2
execute if entity @e[tag=dmain,scores={exper_bot_ent=1..}] run function world:lagcontrol/mobs/exper_bot.0/3