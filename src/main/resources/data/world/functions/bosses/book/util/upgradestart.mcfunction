scoreboard players remove @s bookSpell 1
tag @e[sort=random,limit=1,tag=bookSpell] remove bookSpell
tag @e[sort=random,limit=2,tag=!bookSpell] add bookSpell
execute at @s as @e[tag=bookSpell] run particle portal ~ ~ ~ 0 0 0 1 1 force