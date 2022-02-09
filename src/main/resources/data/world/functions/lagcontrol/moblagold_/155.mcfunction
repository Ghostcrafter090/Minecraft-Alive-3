
execute store result score @e[name=dmain] potion_ent if entity @e[type=potion] 
scoreboard players operation @e[name=dmain] potion_ent -= @e[name=dmain] potion_max 