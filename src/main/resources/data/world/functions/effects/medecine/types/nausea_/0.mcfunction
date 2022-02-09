
execute if entity @s[scores={DB=1..2}] if entity @s[scores={nau_max_tier=4..}] if entity @s[nbt={ActiveEffects:[{Id:37b,Amplifier:0b}]}] run scoreboard players remove @s nau_max_tier 2
execute if entity @s[scores={DB=1..2}] if entity @s[scores={nau_max_tier=2..}] if entity @s[nbt={ActiveEffects:[{Id:37b,Amplifier:1b}]}] run scoreboard players remove @s nau_max_tier 1