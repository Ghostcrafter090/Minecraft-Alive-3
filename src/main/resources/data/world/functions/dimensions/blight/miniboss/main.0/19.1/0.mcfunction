

execute unless entity @e[tag=!notick,tag=blightboss,type=phantom,distance=0..400] run bossbar set minecraft:blightboss visible false
execute if entity @e[tag=!notick,tag=blightboss,type=phantom,distance=0..400] run bossbar set minecraft:blightboss visible true