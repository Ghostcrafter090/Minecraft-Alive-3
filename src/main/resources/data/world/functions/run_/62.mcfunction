
execute positioned 0 100 0 as @a[distance=0..3000] if entity @s[scores={air=..10}] run scoreboard players add @s blightExit 1
execute positioned 0 100 0 as @a[distance=0..3000] unless entity @s[scores={air=..10}] if entity @s[scores={blightExit=-5..}] run scoreboard players remove @s blightExit 1