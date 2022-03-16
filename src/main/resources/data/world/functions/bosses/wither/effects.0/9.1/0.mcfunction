

execute as @e[tag=!notick,type=marker,tag=portal,tag=finished,distance=0..200] run scoreboard players add @s spawnTic 1
execute as @e[tag=!notick,type=marker,tag=portal,tag=finished,scores={spawnTic=600..},distance=0..200] at @s if entity @a[scores={random=0..}] run summon piglin ~ ~2 ~
execute as @e[tag=!notick,type=marker,tag=portal,tag=finished,scores={spawnTic=600..},distance=0..200] at @s if entity @a[scores={random=..0}] run summon blaze ~ ~2 ~
execute as @e[tag=!notick,type=marker,tag=portal,tag=finished,scores={spawnTic=600..},distance=0..200] run scoreboard players set @s spawnTic 0