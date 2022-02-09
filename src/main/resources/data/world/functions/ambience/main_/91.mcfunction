
execute if entity @s[scores={ambt=850..}] at @s if entity @a[distance=0..35] run playsound map.ambience.oceanwaves ambient @a ~ ~ ~ 1
execute if entity @s[scores={ambt=850..}] at @s run scoreboard players set @s ambt 0