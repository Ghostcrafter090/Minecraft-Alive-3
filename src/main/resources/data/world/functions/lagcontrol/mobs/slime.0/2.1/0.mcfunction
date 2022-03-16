

execute store result score @e[tag=!notick,tag=dmain] slime_ent if entity @e[tag=!notick,type=slime] 
scoreboard players operation @e[tag=!notick,tag=dmain] slime_ent -= @e[tag=!notick,tag=dmain] slime_max 