
function world:lagcontrol/mobs/item_/0
execute unless entity @e[name=dmain,scores={item_max=0..}] run scoreboard players set @e[name=dmain] item_max 100
function world:lagcontrol/mobs/item_/2
execute if entity @e[name=dmain,scores={item_ent=1..}] run function world:lagcontrol/mobs/item_/3