

execute store result score @e[tag=!notick,tag=dmain] vindicator_ent if entity @e[tag=!notick,type=vindicator] 
scoreboard players operation @e[tag=!notick,tag=dmain] vindicator_ent -= @e[tag=!notick,tag=dmain] vindicator_max 