
function world:lagcontrol/mobs/pufferfish.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={pufferfish_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] pufferfish_max 50 
function world:lagcontrol/mobs/pufferfish.0/2
execute if entity @e[tag=dmain,scores={pufferfish_ent=1..}] run function world:lagcontrol/mobs/pufferfish.0/3