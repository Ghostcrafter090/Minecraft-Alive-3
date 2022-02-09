
execute store result score @e[name=dmain] falling_bl_ent if entity @e[type=falling_block] 
scoreboard players operation @e[name=dmain] falling_bl_ent -= @e[name=dmain] falling_bl_max 