
function world:lagcontrol/mobs/snowball_/0
execute unless entity @e[name=dmain,scores={snowball_max=0..}] run scoreboard players set @e[name=dmain] snowball_max 50 
function world:lagcontrol/mobs/snowball_/2
execute if entity @e[name=dmain,scores={snowball_ent=1..}] run function world:lagcontrol/mobs/snowball_/3