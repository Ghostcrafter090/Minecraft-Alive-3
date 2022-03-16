
function world:effects/population.0/1.1/0
execute at @s if entity @e[tag=!notick,type=villager,tag=!vil,scores={vwl=2..2},distance=0..10] run scoreboard players set @s vwl 0