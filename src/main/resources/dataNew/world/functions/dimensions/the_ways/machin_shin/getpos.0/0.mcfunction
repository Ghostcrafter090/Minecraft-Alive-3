












scoreboard players operation @a[distance=0..93750] ms_distancex = @s machin_shin_posx
scoreboard players operation @a[distance=0..93750] ms_distancez = @s machin_shin_posz
execute as @a[distance=0..937500] run scoreboard players operation @s ms_distancex -= @s PosX
execute as @a[distance=0..937500] run scoreboard players operation @s ms_distancez -= @s PosZ
execute as @a[distance=0..937500] run scoreboard players set @s ms_distance 0
execute as @a[distance=0..937500] run scoreboard players set @s ms_distance_int 2
execute as @a[distance=0..937500] if entity @s[scores={ms_distancex=0..}] run scoreboard players operation @s ms_distance += @s ms_distancex
execute as @a[distance=0..937500] if entity @s[scores={ms_distancez=0..}] run scoreboard players operation @s ms_distance += @s ms_distancez
execute as @a[distance=0..937500] unless entity @s[scores={ms_distancex=0..}] run scoreboard players operation @s ms_distance -= @s ms_distancex
execute as @a[distance=0..937500] unless entity @s[scores={ms_distancez=0..}] run scoreboard players operation @s ms_distance -= @s ms_distancez
execute as @a[distance=0..937500] run scoreboard players operation @s ms_distance /= @s ms_distance_int