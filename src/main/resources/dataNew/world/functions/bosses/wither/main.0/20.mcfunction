



execute at @s as @e[tag=!notick,type=wither,distance=0..50,tag=!vuln] run summon lightning_bolt ~ ~-40 ~
execute at @s as @e[tag=!notick,type=wither,distance=0..50,tag=!vuln] run scoreboard players add @e[tag=!notick,type=marker,tag=dmain] witherCount 1
execute at @s as @e[tag=!notick,type=wither,distance=0..50,tag=!vuln] run tag @s add vuln