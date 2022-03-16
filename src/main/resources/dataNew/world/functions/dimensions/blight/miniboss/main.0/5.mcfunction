


execute as @e[tag=!notick,tag=blightboss,limit=5,sort=random] run scoreboard players add @s blightbossSize 1
execute as @e[tag=!notick,tag=blightboss,limit=5,sort=random] store result entity @s Size int 1 run scoreboard players get @s blightbossSize