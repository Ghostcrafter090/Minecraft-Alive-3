
execute store result score @e[name=dmain] piglin_ent if entity @e[type=piglin] 
scoreboard players operation @e[name=dmain] piglin_ent -= @e[name=dmain] piglin_max 