
execute as @e[tag=!notick,type=wither_skull,limit=3,sort=random] run scoreboard players add @s with_boolean 1
execute as @e[tag=!notick,type=wither_skull,limit=3,sort=random,scores={with_max_tier=2..}] run scoreboard players set @s with_max_tier 1