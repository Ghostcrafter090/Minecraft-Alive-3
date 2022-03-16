
function world:lagcontrol/mobs/hoglin.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={hoglin_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] hoglin_max 50 
function world:lagcontrol/mobs/hoglin.0/2
execute if entity @e[tag=dmain,scores={hoglin_ent=1..}] run function world:lagcontrol/mobs/hoglin.0/3