
execute store result score @e[name=dmain] zom_pig_ent if entity @e[type=zombified_piglin] 
scoreboard players operation @e[name=dmain] zom_pig_ent -= @e[name=dmain] zom_pig_max 