
function world:lagcontrol/mobs/cave_spider.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={cave_spider_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] cave_spider_max 50 
function world:lagcontrol/mobs/cave_spider.0/2
execute if entity @e[tag=dmain,scores={cave_spider_ent=1..}] run function world:lagcontrol/mobs/cave_spider.0/3