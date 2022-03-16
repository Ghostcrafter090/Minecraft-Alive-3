# Define

# Main
execute in minecraft:overworld run scoreboard players operation @a[distance=0..93750] wt_distancex = @s storm_posx
execute in minecraft:overworld run scoreboard players operation @a[distance=0..93750] wt_distancez = @s storm_posz
execute in minecraft:overworld as @a[distance=0..93750] run scoreboard players operation @s wt_distancex -= @s PosX
execute in minecraft:overworld as @a[distance=0..93750] run scoreboard players operation @s wt_distancez -= @s PosZ
execute in minecraft:overworld as @a[distance=0..93750] run scoreboard players set @s wt_distancea 0
execute in minecraft:overworld as @a[distance=0..93750] run scoreboard players set @s wt_distance_inta 2
execute in minecraft:overworld as @a[distance=0..93750] if entity @s[scores={wt_distancex=0..}] run scoreboard players operation @s wt_distancea += @s wt_distancex
execute in minecraft:overworld as @a[distance=0..93750] if entity @s[scores={wt_distancez=0..}] run scoreboard players operation @s wt_distancea += @s wt_distancez
execute in minecraft:overworld as @a[distance=0..93750] unless entity @s[scores={wt_distancex=0..}] run scoreboard players operation @s wt_distancea -= @s wt_distancex
execute in minecraft:overworld as @a[distance=0..93750] unless entity @s[scores={wt_distancez=0..}] run scoreboard players operation @s wt_distancea -= @s wt_distancez
execute in minecraft:overworld as @a[distance=0..93750] run scoreboard players operation @s wt_distancea /= @s wt_distance_int
execute in minecraft:overworld as @a[distance=0..93750] run scoreboard players operation @s wt_distanceb = @s wt_distancea
execute in minecraft:overworld as @a[distance=0..93750] run scoreboard players operation @s wt_distanceb -= @s wt_distancec
execute in minecraft:overworld as @a[distance=0..93750] if entity @s[scores={wt_distanceb=..0}] run scoreboard players set @s wt 1
execute in minecraft:overworld as @a[distance=0..93750] if entity @s[scores={wt_distanceb=..0}] run scoreboard players operation @s wt_distancec = @s wt_distancea
execute if entity @a[scores={wt_distance=350000..}] if entity @s[scores={wt_done=100..}] run kill @s
