


execute store result score @e[tag=!notick,tag=dmain] fish_bob_ent if entity @e[tag=!notick,type=fishing_bobber] 
scoreboard players operation @e[tag=!notick,tag=dmain] fish_bob_ent -= @e[tag=!notick,tag=dmain] fish_bob_max 