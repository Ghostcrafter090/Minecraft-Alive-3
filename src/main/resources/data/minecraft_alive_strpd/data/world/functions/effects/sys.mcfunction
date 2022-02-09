
function minecraft_alive_strpd:data/world/functions/effects/sys_/0
execute as @a[scores={ADD=1..}] run function minecraft_alive_strpd:data/world/functions/effects/sys_/1
function minecraft_alive_strpd:data/world/functions/effects/sys_/2
execute as @e[name=dmain,scores={blocktd=..0}] run scoreboard players set @e[name=dmain] regud 0
execute as @e[name=dmain,scores={regud=1..1}] run function world:effects/disease/diseasea
execute as @e[name=dmain,scores={regud=2..2}] run function world:effects/disease/diseaseb
execute as @e[name=dmain,scores={regud=3..3}] run function world:effects/disease/diseasec
execute as @e[name=dmain,scores={regud=4..4}] run function world:effects/disease/diseased
function minecraft_alive_strpd:data/world/functions/effects/sys_/8
execute as @a[scores={dsreg=2..2}] run scoreboard players set @a dsreg 0
execute if entity @e[name=dmain,scores={dsreg=1..1}] run function minecraft_alive_strpd:data/world/functions/effects/sys_/10
function minecraft_alive_strpd:data/world/functions/effects/sys_/11
execute if entity @e[scores={time=0..1},name=dmain] run function minecraft_alive_strpd:data/world/functions/effects/sys_/12
execute if entity @e[scores={time=2..3},name=dmain] run function minecraft_alive_strpd:data/world/functions/effects/sys_/13
execute if entity @e[scores={time=20..21},name=dmain] run function minecraft_alive_strpd:data/world/functions/effects/sys_/14
execute at @e[type=villager] as @a[distance=0..6] at @s run say Hello!
execute as @e[type=villager,tag=!vil] unless entity @s[scores={vwl=2..2}] at @s if blocks -4 253 4 3 253 -4 ~-4 ~-1 ~-4 masked run scoreboard players set @s vwl 1
execute as @e[type=villager,tag=!vil,scores={vwl=1..1}] run function minecraft_alive_strpd:data/world/functions/effects/sys_/17