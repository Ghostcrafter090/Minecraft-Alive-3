

execute store result score @e[tag=!notick,tag=dmain] pufferfish_ent if entity @e[tag=!notick,type=pufferfish] 
scoreboard players operation @e[tag=!notick,tag=dmain] pufferfish_ent -= @e[tag=!notick,tag=dmain] pufferfish_max 