

execute store result score @e[tag=!notick,tag=dmain] stray_ent if entity @e[tag=!notick,type=stray] 
scoreboard players operation @e[tag=!notick,tag=dmain] stray_ent -= @e[tag=!notick,tag=dmain] stray_max 