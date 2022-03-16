

execute store result score @e[tag=!notick,tag=dmain] sheep_ent if entity @e[tag=!notick,type=sheep] 
scoreboard players operation @e[tag=!notick,tag=dmain] sheep_ent -= @e[tag=!notick,tag=dmain] sheep_max 