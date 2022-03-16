

execute store result score @e[tag=!notick,tag=dmain] moria_ent if entity @e[tag=!notick,scores={airfill=1..1}]
scoreboard players operation @e[tag=!notick,tag=dmain] moria_ent -= @e[tag=!notick,tag=dmain] moria_max