
execute as @e[type=wither_skeleton] run scoreboard players add @s poi_max_tier 1
execute as @e[type=wither_skeleton,scores={with_minact_tier=2..}] run scoreboard players set @s with_minact_tier 1