
execute if entity @s[scores={DB=1..2}] if entity @s[scores={poi_max_tier=4..}] if entity @s[nbt={ActiveEffects:[{Id:38b,Amplifier:0b}]}] run scoreboard players remove @s poi_max_tier 1
execute if entity @s[scores={DB=1..2}] if entity @s[scores={poi_max_tier=3..}] if entity @s[nbt={ActiveEffects:[{Id:38b,Amplifier:1b}]}] run scoreboard players remove @s poi_max_tier 1