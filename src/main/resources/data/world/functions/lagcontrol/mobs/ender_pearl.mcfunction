
function world:lagcontrol/mobs/ender_pearl_/0
execute unless entity @e[name=dmain,scores={ender_pearl_max=0..}] run scoreboard players set @e[name=dmain] ender_pearl_max 50 
function world:lagcontrol/mobs/ender_pearl_/2
execute if entity @e[name=dmain,scores={ender_pearl_ent=1..}] run function world:lagcontrol/mobs/ender_pearl_/3