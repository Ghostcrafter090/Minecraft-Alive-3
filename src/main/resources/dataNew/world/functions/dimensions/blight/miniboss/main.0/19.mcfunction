


execute at @s unless entity @e[tag=!notick,tag=blightboss,type=phantom,distance=0..400] run bossbar set minecraft:blightboss visible false
execute at @s if entity @e[tag=!notick,tag=blightboss,type=phantom,distance=0..400] run bossbar set minecraft:blightboss visible true