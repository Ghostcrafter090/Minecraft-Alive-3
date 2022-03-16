
data modify entity @e[tag=!notick,tag=blightboss,limit=1,sort=random] AZ set from entity @p Pos[2]
execute as @a store result score @s Y run data get entity @s Pos[1]
scoreboard players add @a Y 50
execute as @e[tag=!notick,tag=blightboss,limit=5,sort=random] store result entity @s AY double 1 run scoreboard players get @p Y
data modify entity @e[tag=!notick,tag=blightboss,limit=1,sort=random] AX set from entity @p Pos[0]