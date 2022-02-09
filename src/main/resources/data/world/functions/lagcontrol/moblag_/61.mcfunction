
execute store result score @e[name=dmain] moria_ent if entity @e[scores={airfill=1..1}]
scoreboard players operation @e[name=dmain] moria_ent -= @e[name=dmain] moria_max