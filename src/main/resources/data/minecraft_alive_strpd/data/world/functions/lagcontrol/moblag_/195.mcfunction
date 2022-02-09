
execute store result score @e[name=dmain] blight_ent if entity @e[tag=blight] 
scoreboard players operation @e[name=dmain] blight_ent -= @e[name=dmain] blight_max 