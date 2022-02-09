
execute store result score @e[name=dmain] skeleton_ent if entity @e[type=skeleton] 
scoreboard players operation @e[name=dmain] skeleton_ent -= @e[name=dmain] skeleton_max 