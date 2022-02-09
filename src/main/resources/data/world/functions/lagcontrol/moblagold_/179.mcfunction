
execute store result score @e[name=dmain] zombie_ent if entity @e[type=zombie] 
scoreboard players operation @e[name=dmain] zombie_ent -= @e[name=dmain] zombie_max 