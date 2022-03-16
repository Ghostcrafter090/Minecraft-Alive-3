






execute at @s unless entity @e[tag=!notick,tag=dmain,scores={unload=1..1}] run forceload remove ~34 ~17 ~34 ~-17
execute at @s unless entity @e[tag=!notick,tag=dmain,scores={unload=1..1}] run forceload remove ~-34 ~17 ~-34 ~-17
execute at @s unless entity @e[tag=!notick,tag=dmain,scores={unload=1..1}] run forceload remove ~17 ~34 ~-17 ~34
execute at @s unless entity @e[tag=!notick,tag=dmain,scores={unload=1..1}] run forceload remove ~17 ~-34 ~-17 ~-34
execute at @s run forceload add ~17 ~17 ~-17 ~-17
execute if entity @s[scores={workerposax=-5..5}] if entity @s[scores={workerposaz=-5..5}] run scoreboard players set @e[tag=!notick,tag=dmain] startworldclock 1