scoreboard objectives add ADD minecraft.custom:minecraft.damage_taken
execute as @a[scores={ADD=1..}] run effect give @s strength 30
execute as @a[scores={ADD=1..}] run effect give @s speed 30
execute as @a[scores={ADD=1..}] run effect give @s jump_boost 30
execute as @a[scores={ADD=1..}] run scoreboard players set @s ADD 0