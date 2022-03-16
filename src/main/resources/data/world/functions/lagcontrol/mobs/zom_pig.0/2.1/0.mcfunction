

execute store result score @e[tag=!notick,tag=dmain] zom_pig_ent if entity @e[tag=!notick,type=zombified_piglin] 
scoreboard players operation @e[tag=!notick,tag=dmain] zom_pig_ent -= @e[tag=!notick,tag=dmain] zom_pig_max 