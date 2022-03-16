
function world:lagcontrol/mobs/endermite.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={endermite_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] endermite_max 50 
function world:lagcontrol/mobs/endermite.0/2
execute if entity @e[tag=dmain,scores={endermite_ent=1..}] run function world:lagcontrol/mobs/endermite.0/3