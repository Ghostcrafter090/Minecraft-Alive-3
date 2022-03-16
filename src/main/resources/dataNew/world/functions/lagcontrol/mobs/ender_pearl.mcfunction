
function world:lagcontrol/mobs/ender_pearl.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={ender_pearl_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] ender_pearl_max 50 
function world:lagcontrol/mobs/ender_pearl.0/2
execute if entity @e[tag=dmain,scores={ender_pearl_ent=1..}] run function world:lagcontrol/mobs/ender_pearl.0/3