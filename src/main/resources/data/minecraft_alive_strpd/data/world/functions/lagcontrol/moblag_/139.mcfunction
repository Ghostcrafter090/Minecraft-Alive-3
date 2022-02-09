
execute store result score @e[name=dmain] stray_ent if entity @e[type=stray] 
scoreboard players operation @e[name=dmain] stray_ent -= @e[name=dmain] stray_max 