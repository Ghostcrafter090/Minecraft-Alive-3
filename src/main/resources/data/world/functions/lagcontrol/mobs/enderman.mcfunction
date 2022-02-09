
function world:lagcontrol/mobs/enderman_/0
execute unless entity @e[name=dmain,scores={enderman_max=0..}] run scoreboard players set @e[name=dmain] enderman_max 50 
function world:lagcontrol/mobs/enderman_/2
execute if entity @e[name=dmain,scores={enderman_ent=1..}] run function world:lagcontrol/mobs/enderman_/3