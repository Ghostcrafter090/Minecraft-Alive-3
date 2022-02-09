
execute store result score @e[name=dmain] pig_ent if entity @e[type=pig] 
scoreboard players operation @e[name=dmain] pig_ent -= @e[name=dmain] pig_max 