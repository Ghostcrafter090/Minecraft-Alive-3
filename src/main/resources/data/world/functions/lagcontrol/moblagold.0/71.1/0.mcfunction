

execute store result score @e[tag=!notick,tag=dmain] llama_spit_ent if entity @e[tag=!notick,type=llama_spit] 
scoreboard players operation @e[tag=!notick,tag=dmain] llama_spit_ent -= @e[tag=!notick,tag=dmain] llama_spit_max 