
scoreboard objectives add myddraalTol dummy
execute as @e[tag=!notick,type=wither_skeleton,tag=Myddraal] run function world:extras/myddraal/tolerence.0/1
execute if entity @e[tag=dmain,type=marker,scores={atic=3..3}] as @e[type=!marker,type=!item,type=!item_frame,type=!wither_skeleton,scores={myddraalTol=1..}] run scoreboard players remove @s myddraalTol 1