
execute as @e[tag=sawayig] if entity @s[tag=stuck] if entity @s[tag=blight] as @a run scoreboard players add @s blightEnter 2
execute as @a unless entity @s[scores={air=..10},distance=0..1000] if entity @s[scores={blightEnter=-5..}] run scoreboard players remove @s blightEnter 1