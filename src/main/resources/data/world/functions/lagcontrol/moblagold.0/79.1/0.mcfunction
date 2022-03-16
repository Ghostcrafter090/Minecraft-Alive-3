

execute store result score @e[tag=!notick,tag=dmain] phantom_ent if entity @e[tag=!notick,type=phantom] 
scoreboard players operation @e[tag=!notick,tag=dmain] phantom_ent -= @e[tag=!notick,tag=dmain] phantom_max 