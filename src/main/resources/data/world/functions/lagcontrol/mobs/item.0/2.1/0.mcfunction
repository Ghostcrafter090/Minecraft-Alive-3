

execute store result score @e[tag=!notick,tag=dmain] item_ent if entity @e[tag=!notick,type=item] 
scoreboard players operation @e[tag=!notick,tag=dmain] item_ent -= @e[tag=!notick,tag=dmain] item_max 