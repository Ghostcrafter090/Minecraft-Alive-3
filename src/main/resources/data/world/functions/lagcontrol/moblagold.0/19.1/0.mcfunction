

execute store result score @e[tag=!notick,tag=dmain] cod_ent if entity @e[tag=!notick,type=cod] 
scoreboard players operation @e[tag=!notick,tag=dmain] cod_ent -= @e[tag=!notick,tag=dmain] cod_max 