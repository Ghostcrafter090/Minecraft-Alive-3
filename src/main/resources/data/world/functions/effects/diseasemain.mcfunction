
function world:effects/diseasemain.0/0
execute as @e[tag=!notick,tag=dmain,type=marker,scores={blocktd=..0}] run scoreboard players set @e[tag=!notick,tag=dmain,type=marker] regud 0
function world:effects/diseasemain.0/2
execute as @e[tag=dmain,type=marker,scores={dsreg=2..}] run scoreboard players set @s dsreg 0
execute if entity @e[tag=dmain,type=marker,scores={dsreg=1..1}] run function world:effects/diseasemain.0/4
execute if entity @a[scores={reguz=4..4}] run function world:effects/diseasemain.0/5
function world:effects/diseasemain.0/6
execute if entity @e[scores={time=0..1},tag=dmain,type=marker] run function world:effects/diseasemain.0/7
execute if entity @e[scores={time=2..3},tag=dmain,type=marker] run function world:effects/diseasemain.0/8
execute if entity @e[scores={time=20..21},tag=dmain,type=marker] run function world:effects/diseasemain.0/9