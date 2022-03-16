

execute store result score @e[tag=!notick,tag=dmain] silverfish_ent if entity @e[tag=!notick,type=silverfish] 
scoreboard players operation @e[tag=!notick,tag=dmain] silverfish_ent -= @e[tag=!notick,tag=dmain] silverfish_max 