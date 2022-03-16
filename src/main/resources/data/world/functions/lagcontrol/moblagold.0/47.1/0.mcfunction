

execute store result score @e[tag=!notick,tag=dmain] eye_of_end_ent if entity @e[tag=!notick,type=eye_of_ender] 
scoreboard players operation @e[tag=!notick,tag=dmain] eye_of_end_ent -= @e[tag=!notick,tag=dmain] eye_of_end_max 