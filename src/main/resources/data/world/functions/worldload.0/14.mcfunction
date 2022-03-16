
execute at @s run function world:worldload.0/14.1/0
execute if entity @s[scores={workerposax=-5..5}] if entity @s[scores={workerposaz=-5..5}] run scoreboard players set @e[tag=!notick,tag=dmain] startworldclock 1