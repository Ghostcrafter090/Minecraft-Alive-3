
function world:lagcontrol/mobs/zombie_/0
execute unless entity @e[name=dmain,scores={zombie_max=0..}] run scoreboard players set @e[name=dmain] zombie_max 50 
function world:lagcontrol/mobs/zombie_/2
execute if entity @e[name=dmain,scores={zombie_ent=1..}] run function world:lagcontrol/mobs/zombie_/3