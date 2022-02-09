
function world:lagcontrol/mobs/machin_shin_/0
execute unless entity @e[name=dmain,scores={machin_shin_max=0..}] run scoreboard players set @e[name=dmain] machin_shin_max 20 
function world:lagcontrol/mobs/machin_shin_/2
execute if entity @e[name=dmain,scores={machin_shin_ent=1..}] run function world:lagcontrol/mobs/machin_shin_/3