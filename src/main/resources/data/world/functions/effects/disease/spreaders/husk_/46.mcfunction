
execute as @e[type=husk] run scoreboard players add @s with_boolean 1
execute as @e[type=husk,scores={with_max_tier=2..}] run scoreboard players set @s with_max_tier 1