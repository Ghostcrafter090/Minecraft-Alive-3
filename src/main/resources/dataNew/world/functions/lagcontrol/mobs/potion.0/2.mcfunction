


execute store result score @e[tag=!notick,tag=dmain] potion_ent if entity @e[tag=!notick,type=potion] 
scoreboard players operation @e[tag=!notick,tag=dmain] potion_ent -= @e[tag=!notick,tag=dmain] potion_max 