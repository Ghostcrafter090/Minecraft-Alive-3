

execute store result score @e[tag=!notick,tag=dmain] hoglin_ent if entity @e[tag=!notick,type=hoglin] 
scoreboard players operation @e[tag=!notick,tag=dmain] hoglin_ent -= @e[tag=!notick,tag=dmain] hoglin_max 