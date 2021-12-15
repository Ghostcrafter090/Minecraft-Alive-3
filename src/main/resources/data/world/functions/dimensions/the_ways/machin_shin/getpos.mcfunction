execute in mca:theways run scoreboard players operation @a[distance=0..93750] ms_distancex = @s machin_shin_posx
execute in mca:theways run scoreboard players operation @a[distance=0..93750] ms_distancez = @s machin_shin_posz
execute in mca:theways as @a[distance=0..937500] run scoreboard players operation @s ms_distancex -= @s PosX
execute in mca:theways as @a[distance=0..937500] run scoreboard players operation @s ms_distancez -= @s PosZ
execute in mca:theways as @a[distance=0..937500] run scoreboard players set @s ms_distance 0
execute in mca:theways as @a[distance=0..937500] run scoreboard players set @s ms_distance_int 2
execute in mca:theways as @a[distance=0..937500] if entity @s[scores={ms_distancex=0..}] run scoreboard players operation @s ms_distance += @s ms_distancex
execute in mca:theways as @a[distance=0..937500] if entity @s[scores={ms_distancez=0..}] run scoreboard players operation @s ms_distance += @s ms_distancez
execute in mca:theways as @a[distance=0..937500] unless entity @s[scores={ms_distancex=0..}] run scoreboard players operation @s ms_distance -= @s ms_distancex
execute in mca:theways as @a[distance=0..937500] unless entity @s[scores={ms_distancez=0..}] run scoreboard players operation @s ms_distance -= @s ms_distancez
execute in mca:theways as @a[distance=0..937500] run scoreboard players operation @s ms_distance /= @s ms_distance_int
execute if entity @a[scores={ms_distance=937500..}] if entity @s[scores={ms_done=10..}] run kill @s

# Effects
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=96300..100000}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.002
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=92600..96300}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.003
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=88900..92600}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.004
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=85200..88900}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.005
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=81500..85200}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.006
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=77800..81500}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.007
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=74100..77800}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.008
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=70400..74100}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.009
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=66700..70400}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.01
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=63000..66700}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.02
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=59300..63000}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.03
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=55600..59300}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.04
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=51900..55600}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.05
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=48200..51900}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.06
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=44500..48200}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.07
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=40800..44500}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.08
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=37100..40800}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.09
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=33400..37100}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.1
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=29700..33400}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.2
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=26000..29700}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.3
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=22300..26000}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.4
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=18600..22300}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.5
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=14900..18600}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.6
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=11200..14900}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.7
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=7500..11200}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.9
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=3800..7500}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 0.9
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=0..3800}] run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 1

execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=96300..100000}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.0000002
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=92600..96300}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.0000004
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=88900..92600}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.0000006
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=85200..88900}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.0000008
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=81500..85200}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.000002
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=77800..81500}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.000004
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=74100..77800}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.000006
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=70400..74100}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.000008
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=66700..70400}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.00002
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=63000..66700}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.00004
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=59300..63000}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.00006
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=55600..59300}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.00008
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=51900..55600}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.0002
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=48200..51900}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.0004
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=44500..48200}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.0006
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=40800..44500}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.0008
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=37100..40800}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.002
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=33400..37100}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.004
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=29700..33400}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.006
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=26000..29700}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.008
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=22300..26000}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.01
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=18600..22300}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.02
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=14900..18600}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.03
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=11200..14900}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.04
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=7500..11200}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.6
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=3800..7500}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 0.8
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=0..3800}] run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 1

execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=66700..70400}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 0.0000000004
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=63000..66700}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 0.0000000008
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=59300..63000}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 0.000000004
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=55600..59300}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 0.000000008
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=51900..55600}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 0.00000004
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=48200..51900}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 0.00000008
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=44500..48200}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 0.0000004
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=40800..44500}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 0.0000008
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=37100..40800}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 0.000004
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=33400..37100}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 0.000008
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=29700..33400}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 0.00004
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=26000..29700}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 0.00008
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=22300..26000}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 0.0004
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=18600..22300}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 0.0008
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=14900..18600}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 0.004
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=11200..14900}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 0.008
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=7500..11200}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 0.04
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=3800..7500}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 0.08
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=0..3800}] run playsound minecraft:ambient.soul_sand_valley.additions master @a ~ ~ ~ 1

execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=96300..100000}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 1
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=92600..96300}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 35
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=88900..92600}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 70
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=85200..88900}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 105
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=81500..85200}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 140
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=77800..81500}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 175
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=74100..77800}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 210
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=70400..74100}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 245
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=66700..70400}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 280
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=63000..66700}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 315
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=59300..63000}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 350
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=55600..59300}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 385
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=51900..55600}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 420
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=48200..51900}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 455
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=44500..48200}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 490
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=40800..44500}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 525
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=37100..40800}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 560
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=33400..37100}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 595
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=29700..33400}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 630
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=26000..29700}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 665
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=22300..26000}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 700
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=18600..22300}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 735
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=14900..18600}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 770
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=11200..14900}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 805
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=7500..11200}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 840
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=3800..7500}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 875
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=0..3800}] run particle minecraft:soul ~ ~1.6 ~ 3 3 3 1 910
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=11200..14900}] run particle minecraft:large_smoke ~ ~1.6 ~ 3 3 3 1 100
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=7500..11200}] run particle minecraft:large_smoke ~ ~1.6 ~ 3 3 3 1 200
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=3800..7500}] run particle minecraft:large_smoke ~ ~1.6 ~ 3 3 3 1 300
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=0..3800}] run particle minecraft:large_smoke ~ ~1.6 ~ 3 3 3 1 400

execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=96300..100000}] as @e[distance=0..200] run effect give @s hunger 5 0
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=92600..96300}] as @e[distance=0..200] run effect give @s hunger 5 1
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=88900..92600}] as @e[distance=0..200] run effect give @s hunger 5 1
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=85200..88900}] as @e[distance=0..200] run effect give @s hunger 5 1
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=81500..85200}] as @e[distance=0..200] run effect give @s hunger 5 1
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=77800..81500}] as @e[distance=0..200] run effect give @s hunger 5 1
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=74100..77800}] as @e[distance=0..200] run effect give @s hunger 5 2
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=70400..74100}] as @e[distance=0..200] run effect give @s hunger 5 2
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=66700..70400}] as @e[distance=0..200] run effect give @s hunger 5 2
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=63000..66700}] as @e[distance=0..200] run effect give @s hunger 5 3
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=59300..63000}] as @e[distance=0..200] run effect give @s hunger 5 3
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=55600..59300}] as @e[distance=0..200] run effect give @s hunger 5 3
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=51900..55600}] as @e[distance=0..200] run effect give @s hunger 5 4
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=48200..51900}] as @e[distance=0..200] run effect give @s hunger 5 4
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=44500..48200}] as @e[distance=0..200] run effect give @s hunger 5 4
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=40800..44500}] as @e[distance=0..200] run effect give @s hunger 5 5
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=37100..40800}] as @e[distance=0..200] run effect give @s hunger 5 5
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=33400..37100}] as @e[distance=0..200] run effect give @s hunger 5 5
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=29700..33400}] as @e[distance=0..200] run effect give @s hunger 5 6
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=26000..29700}] as @e[distance=0..200] run effect give @s hunger 5 6
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=22300..26000}] as @e[distance=0..200] run effect give @s hunger 5 7
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=18600..22300}] as @e[distance=0..200] run effect give @s hunger 5 7
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=14900..18600}] as @e[distance=0..200] run effect give @s hunger 5 7
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=11200..14900}] as @e[distance=0..200] run effect give @s hunger 5 8
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=7500..11200}] as @e[distance=0..200] run effect give @s hunger 5 8
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=3800..7500}] as @e[distance=0..200] run effect give @s hunger 5 8
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=0..3800}] as @e[distance=0..200] run effect give @s hunger 5 9
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=51900..55600}] as @e[distance=0..200] run effect give @s poison 5 0
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=48200..51900}] as @e[distance=0..200] run effect give @s poison 5 0
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=44500..48200}] as @e[distance=0..200] run effect give @s poison 5 0
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=40800..44500}] as @e[distance=0..200] run effect give @s poison 5 0
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=37100..40800}] as @e[distance=0..200] run effect give @s poison 5 0
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=33400..37100}] as @e[distance=0..200] run effect give @s poison 5 1
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=29700..33400}] as @e[distance=0..200] run effect give @s poison 5 1
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=26000..29700}] as @e[distance=0..200] run effect give @s poison 5 1
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=22300..26000}] as @e[distance=0..200] run effect give @s poison 5 1
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=18600..22300}] as @e[distance=0..200] run effect give @s poison 5 2
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=14900..18600}] as @e[distance=0..200] run effect give @s poison 5 2
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=11200..14900}] as @e[distance=0..200] run effect give @s poison 5 2
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=7500..11200}] as @e[distance=0..200] run effect give @s poison 5 2
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=3800..7500}] as @e[distance=0..200] run effect give @s poison 5 3
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=0..3800}] as @e[distance=0..200] run effect give @s poison 5 3
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=7500..11200}] as @e[distance=0..200] run effect give @s wither 3 0
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=3800..7500}] as @e[distance=0..200] run effect give @s wither 3 1
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=0..3800}] as @e[distance=0..200] run effect give @s wither 3 2
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=22300..26000}] as @e[distance=0..200] run effect give @s nausea 4 1
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=18600..22300}] as @e[distance=0..200] run effect give @s nausea 5 2
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=14900..18600}] as @e[distance=0..200] run effect give @s nausea 6 2
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=11200..14900}] as @e[distance=0..200] run effect give @s nausea 7 2
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=7500..11200}] as @e[distance=0..200] run effect give @s nausea 8 2
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=3800..7500}] as @e[distance=0..200] run effect give @s nausea 9 3
execute in mca:theways as @a[distance=00..937500] at @s if entity @s[scores={ms_distance=0..3800}] as @e[distance=0..200] run effect give @s nausea 10 3