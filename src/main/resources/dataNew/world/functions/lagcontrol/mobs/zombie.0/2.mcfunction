


execute store result score @e[tag=!notick,tag=dmain] zombie_ent if entity @e[tag=!notick,type=zombie] 
scoreboard players operation @e[tag=!notick,tag=dmain] zombie_ent -= @e[tag=!notick,tag=dmain] zombie_max 