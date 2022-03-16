


execute store result score @e[tag=!notick,tag=dmain] falling_bl_ent if entity @e[tag=!notick,type=falling_block] 
scoreboard players operation @e[tag=!notick,tag=dmain] falling_bl_ent -= @e[tag=!notick,tag=dmain] falling_bl_max 