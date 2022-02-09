
function world:effects/sys_/0
execute as @a[scores={ADD=1..}] run function world:effects/sys_/1
function world:effects/sys_/2
execute as @e[name=dmain,type=marker,scores={blocktd=..0}] run scoreboard players set @e[name=dmain,type=marker] regud 0
function world:effects/sys_/4
execute as @e[name=dmain,type=marker,scores={dsreg=2..}] run scoreboard players set @s dsreg 0
execute if entity @e[name=dmain,type=marker,scores={dsreg=1..1}] run function world:effects/sys_/6
execute if entity @a[scores={reguz=4..4}] run function world:effects/sys_/7
function world:effects/sys_/8
execute if entity @e[scores={time=0..1},name=dmain,type=marker] run function world:effects/sys_/9
execute if entity @e[scores={time=2..3},name=dmain,type=marker] run function world:effects/sys_/10
execute if entity @e[scores={time=20..21},name=dmain,type=marker] run function world:effects/sys_/11
execute as @e[type=villager,tag=!vil] unless entity @s[scores={vwl=2..2}] at @s if blocks -4 253 4 3 253 -4 ~-4 ~-1 ~-4 masked run scoreboard players set @s vwl 1
execute as @e[type=villager,tag=!vil,scores={vwl=1..1}] run function world:effects/sys_/13