# Define
scoreboard objectives add myddraalTol dummy

# Main
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[distance=0..20,type=!marker,type=!item,type=!item_frame,type=!wither_skeleton] run scoreboard players add @s myddraalTol 1
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[distance=0..15,type=!marker,type=!item,type=!item_frame,type=!wither_skeleton] run scoreboard players add @s myddraalTol 1
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[distance=0..10,type=!marker,type=!item,type=!item_frame,type=!wither_skeleton] run scoreboard players add @s myddraalTol 1
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[distance=0..5,type=!marker,type=!item,type=!item_frame,type=!wither_skeleton] run scoreboard players add @s myddraalTol 1
execute as @e[type=wither_skeleton,tag=Myddraal] at @s as @e[distance=0..2,type=!marker,type=!item,type=!item_frame,type=!wither_skeleton] run scoreboard players add @s myddraalTol 1
execute if entity @e[name=dmain,type=marker,scores={atic=3..3}] as @e[type=!marker,type=!item,type=!item_frame,type=!wither_skeleton,scores={myddraalTol=1..}] run scoreboard players remove @s myddraalTol 1