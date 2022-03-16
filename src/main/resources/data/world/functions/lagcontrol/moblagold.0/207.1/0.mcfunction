

execute store result score @e[tag=!notick,tag=dmain] storm_ent if entity @e[tag=!notick,name=storm] 
scoreboard players operation @e[tag=!notick,tag=dmain] storm_ent -= @e[tag=!notick,tag=dmain] storm_max 