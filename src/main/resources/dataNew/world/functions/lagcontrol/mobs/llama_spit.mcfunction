
function world:lagcontrol/mobs/llama_spit.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={llama_spit_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] llama_spit_max 50 
function world:lagcontrol/mobs/llama_spit.0/2
execute if entity @e[tag=dmain,scores={llama_spit_ent=1..}] run function world:lagcontrol/mobs/llama_spit.0/3