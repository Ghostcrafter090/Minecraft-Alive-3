execute as @e[type=!item,type=!marker,type=!minecart,type=!armor_stand,scores={DB=1..2}] if entity @s[scores={blin_max_tier=4..}] if entity @s[nbt={ActiveEffects:[{Id:33b,Amplifier:0b}]}] run scoreboard players remove @s blin_max_tier 1
execute as @e[type=!item,type=!marker,type=!minecart,type=!armor_stand,scores={DB=1..2}] if entity @s[scores={blin_max_tier=3..}] if entity @s[nbt={ActiveEffects:[{Id:33b,Amplifier:1b}]}] run scoreboard players remove @s blin_max_tier 1
execute as @e[type=!item,type=!marker,type=!minecart,type=!armor_stand,scores={DB=1..2}] if entity @s[scores={blin_max_tier=2..}] if entity @s[nbt={ActiveEffects:[{Id:33b,Amplifier:2b}]}] run scoreboard players remove @s blin_max_tier 1