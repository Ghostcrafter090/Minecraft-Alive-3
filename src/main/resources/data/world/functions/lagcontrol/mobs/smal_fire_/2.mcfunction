
execute store result score @e[name=dmain] smal_fire_ent if entity @e[type=small_fireball] 
scoreboard players operation @e[name=dmain] smal_fire_ent -= @e[name=dmain] smal_fire_max 