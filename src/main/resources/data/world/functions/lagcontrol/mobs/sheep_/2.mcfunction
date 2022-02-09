
execute store result score @e[name=dmain] sheep_ent if entity @e[type=sheep] 
scoreboard players operation @e[name=dmain] sheep_ent -= @e[name=dmain] sheep_max 