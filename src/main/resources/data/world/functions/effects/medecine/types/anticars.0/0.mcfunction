
execute if entity @s[scores={poi_max_tier=2..}] if entity @s[nbt={ActiveEffects:[{Id:39b,Amplifier:0b}]}] run scoreboard players remove @s poi_max_tier 1
execute if entity @s[scores={poi_max_tier=1..}] if entity @s[nbt={ActiveEffects:[{Id:39b,Amplifier:1b}]}] run scoreboard players remove @s poi_max_tier 1
execute if entity @s[nbt={ActiveEffects:[{Id:39b,Amplifier:1b}]}] run effect clear @s wither