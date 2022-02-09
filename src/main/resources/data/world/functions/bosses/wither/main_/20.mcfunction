
execute at @s as @e[type=wither,distance=0..50,tag=!vuln] run summon lightning_bolt ~ ~-40 ~
execute at @s as @e[type=wither,distance=0..50,tag=!vuln] run scoreboard players add @e[type=marker,name=dmain] witherCount 1
execute at @s as @e[type=wither,distance=0..50,tag=!vuln] run tag @s add vuln