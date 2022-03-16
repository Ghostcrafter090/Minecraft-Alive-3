





execute at @s run tp @e[tag=!notick,tag=templeFindball] ^ ^ ^2 ~ ~
execute at @s facing entity @e[tag=!notick,tag=templeFindball] feet if score @s jTempleDistance > @e[tag=!notick,tag=templeFindball,limit=1,sort=nearest] jTempleDistance run tp @s ^ ^ ^0.65 ~ ~
execute at @s run tp @s ~ ~ ~ ~45 0
execute at @s if block ~ ~ ~ air run tp @s ~ ~-0.5 ~ ~ ~
execute at @s unless block ~ ~ ~ air run tp @s ~ ~0.5 ~ ~ ~