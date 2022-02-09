
function world:lagcontrol/mobs/endermite_/0
execute unless entity @e[name=dmain,scores={endermite_max=0..}] run scoreboard players set @e[name=dmain] endermite_max 50 
function world:lagcontrol/mobs/endermite_/2
execute if entity @e[name=dmain,scores={endermite_ent=1..}] run function world:lagcontrol/mobs/endermite_/3