
function world:lagcontrol/mobs/spider_/0
execute unless entity @e[name=dmain,scores={spider_max=0..}] run scoreboard players set @e[name=dmain] spider_max 50 
function world:lagcontrol/mobs/spider_/2
execute if entity @e[name=dmain,scores={spider_ent=1..}] run function world:lagcontrol/mobs/spider_/3