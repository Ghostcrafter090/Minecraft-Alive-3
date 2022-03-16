execute as @e[type=villager,tag=!vil] unless entity @s[scores={vwl=2..2}] at @s if blocks -4 253 4 3 253 -4 ~-4 ~-1 ~-4 masked run scoreboard players set @s vwl 1
execute as @e[type=villager,tag=!vil,scores={vwl=1..1}] run scoreboard players set @s vwlt 0
execute as @e[type=villager,tag=!vil,scores={vwl=1..1}] run scoreboard players set @s vwl 2
execute as @e[type=villager,tag=!vil,scores={vwl=1..1}] at @s if entity @e[type=villager,tag=!vil,scores={vwl=2..2},distance=0..10] run scoreboard players set @s vwl 0