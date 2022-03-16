


execute store result score @e[tag=!notick,tag=dmain] pig_ent if entity @e[tag=!notick,type=pig] 
scoreboard players operation @e[tag=!notick,tag=dmain] pig_ent -= @e[tag=!notick,tag=dmain] pig_max 