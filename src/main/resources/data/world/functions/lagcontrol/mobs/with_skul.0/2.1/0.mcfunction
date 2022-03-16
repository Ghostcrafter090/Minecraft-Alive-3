

execute store result score @e[tag=!notick,tag=dmain] with_skul_ent if entity @e[tag=!notick,type=wither_skull] 
scoreboard players operation @e[tag=!notick,tag=dmain] with_skul_ent -= @e[tag=!notick,tag=dmain] with_skul_max 