



execute if entity @s[scores={hung_max_tier=4..}] if entity @s[nbt={ActiveEffects:[{Id:34b,Amplifier:0b}]}] run scoreboard players remove @s hung_max_tier 2
execute if entity @s[scores={hung_max_tier=2..}] if entity @s[nbt={ActiveEffects:[{Id:34b,Amplifier:1b}]}] run scoreboard players remove @s hung_max_tier 1