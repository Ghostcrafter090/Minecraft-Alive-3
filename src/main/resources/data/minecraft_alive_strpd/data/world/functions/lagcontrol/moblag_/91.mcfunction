
execute store result score @e[name=dmain] piglin_brute_ent if entity @e[type=piglin_brute] 
scoreboard players operation @e[name=dmain] piglin_brute_ent -= @e[name=dmain] piglin_brute_max 