

execute store result score @e[tag=!notick,tag=dmain] piglin_ent if entity @e[tag=!notick,type=piglin] 
scoreboard players operation @e[tag=!notick,tag=dmain] piglin_ent -= @e[tag=!notick,tag=dmain] piglin_max 