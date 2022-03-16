

execute store result score @e[tag=!notick,tag=dmain] ender_pearl_ent if entity @e[tag=!notick,type=ender_pearl] 
scoreboard players operation @e[tag=!notick,tag=dmain] ender_pearl_ent -= @e[tag=!notick,tag=dmain] ender_pearl_max 