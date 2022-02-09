
function world:lagcontrol/mobs/pufferfish_/0
execute unless entity @e[name=dmain,scores={pufferfish_max=0..}] run scoreboard players set @e[name=dmain] pufferfish_max 50 
function world:lagcontrol/mobs/pufferfish_/2
execute if entity @e[name=dmain,scores={pufferfish_ent=1..}] run function world:lagcontrol/mobs/pufferfish_/3