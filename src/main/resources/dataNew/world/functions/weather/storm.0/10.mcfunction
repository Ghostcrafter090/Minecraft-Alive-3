




execute as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=16360..}] if entity @s[scores={wt_tick=100..}] run weather clear
execute as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=5360..16360}] if entity @s[scores={wt_tick=100..}] run weather rain
execute as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=0..5360}] if entity @s[scores={wt_tick=100..}] run weather thunder