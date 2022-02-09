
function world:lagcontrol/mobs/cave_spider_/0
execute unless entity @e[name=dmain,scores={cave_spider_max=0..}] run scoreboard players set @e[name=dmain] cave_spider_max 50 
function world:lagcontrol/mobs/cave_spider_/2
execute if entity @e[name=dmain,scores={cave_spider_ent=1..}] run function world:lagcontrol/mobs/cave_spider_/3