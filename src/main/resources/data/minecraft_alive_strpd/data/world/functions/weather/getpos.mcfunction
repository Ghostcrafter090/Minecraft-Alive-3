
execute in minecraft:overworld run function minecraft_alive_strpd:data/world/functions/weather/getpos_/0
execute if entity @a[scores={wt_distance=350000..}] if entity @s[scores={wt_done=100..}] run kill @s