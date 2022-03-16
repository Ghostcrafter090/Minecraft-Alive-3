

execute store result score @e[tag=!notick,tag=dmain] exper_orb_ent if entity @e[tag=!notick,type=experience_orb] 
scoreboard players operation @e[tag=!notick,tag=dmain] exper_orb_ent -= @e[tag=!notick,tag=dmain] exper_orb_max 