
function world:lagcontrol/mobs/zom_pig_/0
execute unless entity @e[name=dmain,scores={zom_pig_max=0..}] run scoreboard players set @e[name=dmain] zom_pig_max 50 
function world:lagcontrol/mobs/zom_pig_/2
execute if entity @e[name=dmain,scores={zom_pig_ent=1..}] run function world:lagcontrol/mobs/zom_pig_/3