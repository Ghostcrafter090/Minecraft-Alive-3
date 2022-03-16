
function world:lagcontrol/mobs/enderman.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={enderman_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] enderman_max 50 
function world:lagcontrol/mobs/enderman.0/2
execute if entity @e[tag=dmain,scores={enderman_ent=1..}] run function world:lagcontrol/mobs/enderman.0/3