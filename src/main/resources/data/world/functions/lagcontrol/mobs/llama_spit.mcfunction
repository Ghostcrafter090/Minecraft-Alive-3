
function world:lagcontrol/mobs/llama_spit_/0
execute unless entity @e[name=dmain,scores={llama_spit_max=0..}] run scoreboard players set @e[name=dmain] llama_spit_max 50 
function world:lagcontrol/mobs/llama_spit_/2
execute if entity @e[name=dmain,scores={llama_spit_ent=1..}] run function world:lagcontrol/mobs/llama_spit_/3