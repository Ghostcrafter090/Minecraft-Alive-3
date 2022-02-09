
execute store result score @e[name=dmain] kill_ent if entity @e[tag=lagcontrol]
scoreboard players operation @e[name=dmain] kill_ent -= @e[name=dmain] kill_max