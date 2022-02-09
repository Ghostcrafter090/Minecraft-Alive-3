
execute as @e[type=wither] run scoreboard players add @s with_boolean 1
execute as @e[type=wither,scores={with_max_tier=2..}] run scoreboard players set @s with_max_tier 1