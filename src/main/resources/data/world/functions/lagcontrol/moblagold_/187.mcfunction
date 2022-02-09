
execute store result score @e[name=dmain] fish_bob_ent if entity @e[type=fishing_bobber] 
scoreboard players operation @e[name=dmain] fish_bob_ent -= @e[name=dmain] fish_bob_max 