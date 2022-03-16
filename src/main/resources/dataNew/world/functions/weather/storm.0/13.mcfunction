



execute if entity @s[scores={storm_posx=-1..1}] if entity @s[scores={storm_posz=-1..1}] run scoreboard players add @s wtdummytic 1
execute if entity @s[scores={wtdummytic=100..}] run kill @s