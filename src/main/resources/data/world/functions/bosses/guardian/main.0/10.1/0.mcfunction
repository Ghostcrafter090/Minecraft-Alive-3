

execute as @e[tag=!notick,type=elder_guardian,distance=0..50,tag=!vuln] run summon lightning_bolt ~ ~-40 ~
execute as @e[tag=!notick,type=elder_guardian,distance=0..50,tag=!vuln] run scoreboard players add @e[tag=!notick,type=marker,tag=dmain] guardianCount 1
execute as @e[tag=!notick,type=elder_guardian,distance=0..50,tag=!vuln] run tag @s add vuln