
function world:lagcontrol/mobs/zom_pig.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={zom_pig_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] zom_pig_max 50 
function world:lagcontrol/mobs/zom_pig.0/2
execute if entity @e[tag=dmain,scores={zom_pig_ent=1..}] run function world:lagcontrol/mobs/zom_pig.0/3