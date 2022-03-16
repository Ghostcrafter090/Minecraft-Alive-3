




tp @e[tag=!notick,tag=templeFindball] ^ ^ ^2 ~ ~
execute facing entity @e[tag=!notick,tag=templeFindball] feet if score @s jTempleDistance > @e[tag=!notick,tag=templeFindball,limit=1,sort=nearest] jTempleDistance run tp @s ^ ^ ^0.65 ~ ~
tp @s ~ ~ ~ ~45 0
execute if block ~ ~ ~ air run tp @s ~ ~-0.5 ~ ~ ~
execute unless block ~ ~ ~ air run tp @s ~ ~0.5 ~ ~ ~