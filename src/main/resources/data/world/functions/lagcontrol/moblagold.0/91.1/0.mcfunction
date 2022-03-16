

execute store result score @e[tag=!notick,tag=dmain] piglin_brute_ent if entity @e[tag=!notick,type=piglin_brute] 
scoreboard players operation @e[tag=!notick,tag=dmain] piglin_brute_ent -= @e[tag=!notick,tag=dmain] piglin_brute_max 