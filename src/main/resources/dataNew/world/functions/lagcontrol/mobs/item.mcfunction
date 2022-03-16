
function world:lagcontrol/mobs/item.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={item_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] item_max 100
function world:lagcontrol/mobs/item.0/2
execute if entity @e[tag=dmain,scores={item_ent=1..}] run function world:lagcontrol/mobs/item.0/3