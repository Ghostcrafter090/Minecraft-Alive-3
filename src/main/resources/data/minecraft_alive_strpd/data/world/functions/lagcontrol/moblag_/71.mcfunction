
execute store result score @e[name=dmain] llama_spit_ent if entity @e[type=llama_spit] 
scoreboard players operation @e[name=dmain] llama_spit_ent -= @e[name=dmain] llama_spit_max 