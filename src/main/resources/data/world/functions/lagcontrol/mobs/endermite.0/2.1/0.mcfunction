

execute store result score @e[tag=!notick,tag=dmain] endermite_ent if entity @e[tag=!notick,type=endermite] 
scoreboard players operation @e[tag=!notick,tag=dmain] endermite_ent -= @e[tag=!notick,tag=dmain] endermite_max 