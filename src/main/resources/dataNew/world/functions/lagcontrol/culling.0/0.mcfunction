
















execute at @s as @e[tag=!notick,tag=!noai,distance=45..65,tag=_animal] run data modify entity @s NoAI set value 1b
execute at @s as @e[tag=!notick,tag=!noai,distance=45..65,tag=_animal] run tag @s add noai
execute at @s as @e[tag=!notick,tag=noai,distance=..45,tag=_animal] run data modify entity @s NoAI set value 0
execute at @s as @e[tag=!notick,tag=noai,distance=..45,tag=_animal] run tag @s remove noai
execute at @s as @e[tag=!notick,tag=!noai,distance=45..65,tag=_monster,tag=!sawayig] run data modify entity @s NoAI set value 1b
execute at @s as @e[tag=!notick,tag=!noai,distance=45..65,tag=_monster,tag=!sawayig] run tag @s add noai
execute at @s as @e[tag=!notick,tag=noai,distance=..45,tag=_monster,tag=!sawayig] run data modify entity @s NoAI set value 0
execute at @s as @e[tag=!notick,tag=noai,distance=..45,tag=_monster,tag=!sawayig] run tag @s remove noai
execute at @s as @e[tag=!notick,tag=!noai,distance=45..65,tag=_water] run data modify entity @s NoAI set value 1b
execute at @s as @e[tag=!notick,tag=!noai,distance=45..65,tag=_water] run tag @s add noai
execute at @s as @e[tag=!notick,tag=noai,distance=..45,tag=_water] run data modify entity @s NoAI set value 0
execute at @s as @e[tag=!notick,tag=noai,distance=..45,tag=_water] run tag @s remove noai
execute at @s as @e[tag=!notick,tag=!noai,distance=45..65,tag=_nether,type=!ghast,type=!blaze,tag=!sawayig] run data modify entity @s NoAI set value 1b
execute at @s as @e[tag=!notick,tag=!noai,distance=45..65,tag=_nether,type=!ghast,type=!blaze,tag=!sawayig] run tag @s add noai
execute at @s as @e[tag=!notick,tag=noai,distance=..45,tag=_nether,type=!ghast,type=!blaze,tag=!sawayig] run data modify entity @s NoAI set value 0
execute at @s as @e[tag=!notick,tag=noai,distance=..45,tag=_nether,type=!ghast,type=!blaze,tag=!sawayig] run tag @s remove noai