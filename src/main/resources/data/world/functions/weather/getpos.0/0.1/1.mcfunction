














scoreboard players operation @s wt_distancex -= @s PosX
scoreboard players operation @s wt_distancez -= @s PosZ
scoreboard players set @s wt_distancea 0
scoreboard players set @s wt_distance_inta 2
execute if entity @s[scores={wt_distancex=0..}] run scoreboard players operation @s wt_distancea += @s wt_distancex
execute if entity @s[scores={wt_distancez=0..}] run scoreboard players operation @s wt_distancea += @s wt_distancez
execute unless entity @s[scores={wt_distancex=0..}] run scoreboard players operation @s wt_distancea -= @s wt_distancex
execute unless entity @s[scores={wt_distancez=0..}] run scoreboard players operation @s wt_distancea -= @s wt_distancez
scoreboard players operation @s wt_distancea /= @s wt_distance_int
scoreboard players operation @s wt_distanceb = @s wt_distancea
scoreboard players operation @s wt_distanceb -= @s wt_distancec
execute if entity @s[scores={wt_distanceb=..0}] run scoreboard players set @s wt 1
execute if entity @s[scores={wt_distanceb=..0}] run scoreboard players operation @s wt_distancec = @s wt_distancea