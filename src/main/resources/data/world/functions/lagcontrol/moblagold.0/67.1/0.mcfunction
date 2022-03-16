

execute store result score @e[tag=!notick,tag=dmain] fireball_ent if entity @e[tag=!notick,type=fireball] 
scoreboard players operation @e[tag=!notick,tag=dmain] fireball_ent -= @e[tag=!notick,tag=dmain] fireball_max 