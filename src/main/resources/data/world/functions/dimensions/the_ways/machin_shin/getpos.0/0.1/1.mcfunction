










scoreboard players operation @s ms_distancex -= @s PosX
scoreboard players operation @s ms_distancez -= @s PosZ
scoreboard players set @s ms_distance 0
scoreboard players set @s ms_distance_int 2
execute if entity @s[scores={ms_distancex=0..}] run scoreboard players operation @s ms_distance += @s ms_distancex
execute if entity @s[scores={ms_distancez=0..}] run scoreboard players operation @s ms_distance += @s ms_distancez
execute unless entity @s[scores={ms_distancex=0..}] run scoreboard players operation @s ms_distance -= @s ms_distancex
execute unless entity @s[scores={ms_distancez=0..}] run scoreboard players operation @s ms_distance -= @s ms_distancez
scoreboard players operation @s ms_distance /= @s ms_distance_int