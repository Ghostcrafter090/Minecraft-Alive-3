
execute store result score @e[name=dmain] item_ent if entity @e[type=item] 
scoreboard players operation @e[name=dmain] item_ent -= @e[name=dmain] item_max 