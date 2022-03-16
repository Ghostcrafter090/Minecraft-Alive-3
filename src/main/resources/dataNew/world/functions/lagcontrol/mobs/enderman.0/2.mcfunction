


execute store result score @e[tag=!notick,tag=dmain] enderman_ent if entity @e[tag=!notick,type=enderman] 
scoreboard players operation @e[tag=!notick,tag=dmain] enderman_ent -= @e[tag=!notick,tag=dmain] enderman_max 