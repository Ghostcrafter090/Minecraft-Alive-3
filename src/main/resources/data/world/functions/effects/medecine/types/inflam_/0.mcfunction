
execute if entity @s[scores={DB=1..2}] if entity @s[scores={weak_max_tier=1..}] if entity @s[nbt={ActiveEffects:[{Id:36b,Amplifier:0b}]}] run scoreboard players remove @s weak_max_tier 1
execute if entity @s[scores={DB=1..2}] if entity @s[scores={weak_max_tier=2..}] if entity @s[nbt={ActiveEffects:[{Id:36b,Amplifier:1b}]}] run scoreboard players remove @s weak_max_tier 1
execute if entity @s[scores={DB=1..2}] if entity @s[scores={slow_max_tier=3..}] if entity @s[nbt={ActiveEffects:[{Id:36b,Amplifier:0b}]}] run scoreboard players remove @s slow_max_tier 1
execute if entity @s[scores={DB=1..2}] if entity @s[scores={slow_max_tier=2..}] if entity @s[nbt={ActiveEffects:[{Id:36b,Amplifier:1b}]}] run scoreboard players remove @s slow_max_tier 1
execute if entity @s[scores={DB=1..2}] if entity @s[scores={minf_max_tier=1..}] if entity @s[nbt={ActiveEffects:[{Id:36b,Amplifier:0b}]}] run scoreboard players remove @s minf_max_tier 1
execute if entity @s[scores={DB=1..2}] if entity @s[scores={minf_max_tier=2..}] if entity @s[nbt={ActiveEffects:[{Id:36b,Amplifier:1b}]}] run scoreboard players remove @s minf_max_tier 1