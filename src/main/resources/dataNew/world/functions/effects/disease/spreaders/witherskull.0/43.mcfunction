


execute as @e[tag=!notick,type=wither_skull,limit=3,sort=random] run scoreboard players add @s poi_max_tier 1
execute as @e[tag=!notick,type=wither_skull,limit=3,sort=random,scores={with_minact_tier=2..}] run scoreboard players set @s with_minact_tier 1