

execute store result score @e[tag=!notick,tag=dmain] witch_ent if entity @e[tag=!notick,type=witch] 
scoreboard players operation @e[tag=!notick,tag=dmain] witch_ent -= @e[tag=!notick,tag=dmain] witch_max 