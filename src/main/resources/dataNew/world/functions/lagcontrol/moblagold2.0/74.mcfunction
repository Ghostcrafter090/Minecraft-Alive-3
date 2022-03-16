


execute store result score @e[tag=!notick,tag=dmain] kill_ent if entity @e[tag=!notick,tag=lagcontrol]
scoreboard players operation @e[tag=!notick,tag=dmain] kill_ent -= @e[tag=!notick,tag=dmain] kill_max