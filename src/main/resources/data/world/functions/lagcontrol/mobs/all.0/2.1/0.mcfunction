

execute store result score @e[tag=!notick,tag=dmain] all_ent if entity @e
scoreboard players operation @e[tag=!notick,tag=dmain] all_ent -= @e[tag=!notick,tag=dmain] all_max 