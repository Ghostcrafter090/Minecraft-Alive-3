
execute as @e[type=zombie_villager] run scoreboard players add @s poi_max_tier 1
execute as @e[type=zombie_villager,scores={with_minact_tier=2..}] run scoreboard players set @s with_minact_tier 1