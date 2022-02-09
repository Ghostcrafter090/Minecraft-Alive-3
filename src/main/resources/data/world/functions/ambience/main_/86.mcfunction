
execute if entity @s[scores={ambt=700..}] at @s if entity @a[distance=0..35] run playsound map.ambience.highlevelmountain ambient @a ~ ~ ~ 1
execute if entity @s[scores={ambt=700..}] at @s run scoreboard players set @s ambt 0