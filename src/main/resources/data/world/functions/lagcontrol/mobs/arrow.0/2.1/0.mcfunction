

execute store result score @e[tag=!notick,tag=dmain] arrow_ent if entity @e[tag=!notick,type=arrow] 
scoreboard players operation @e[tag=!notick,tag=dmain] arrow_ent -= @e[tag=!notick,tag=dmain] arrow_max 