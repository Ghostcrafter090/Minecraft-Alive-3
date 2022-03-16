
function world:lagcontrol/mobs/snowball.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={snowball_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] snowball_max 50 
function world:lagcontrol/mobs/snowball.0/2
execute if entity @e[tag=dmain,scores={snowball_ent=1..}] run function world:lagcontrol/mobs/snowball.0/3