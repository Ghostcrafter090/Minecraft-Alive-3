
execute if entity @s[scores={ambt=300..}] at @s if entity @a[distance=0..35] run playsound map.ambience.river ambient @a ~ ~ ~ 1
execute if entity @s[scores={ambt=300..}] at @s run scoreboard players set @s ambt 0