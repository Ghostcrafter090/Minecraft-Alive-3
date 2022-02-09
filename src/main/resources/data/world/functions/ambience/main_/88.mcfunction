
execute if entity @s[scores={ambt=800..}] at @s if entity @a[distance=0..35] run playsound map.ambience.jungle ambient @a ~ ~ ~ 1
execute if entity @s[scores={ambt=800..}] at @s run scoreboard players set @s ambt 0