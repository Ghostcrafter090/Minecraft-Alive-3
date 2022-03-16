
function world:lagcontrol/mobs/slime.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={slime_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] slime_max 50 
function world:lagcontrol/mobs/slime.0/2
execute if entity @e[tag=dmain,scores={slime_ent=1..}] run function world:lagcontrol/mobs/slime.0/3