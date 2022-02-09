
execute as @e[type=dolphin] run data modify entity @s TreasurePosZ set from entity @p Pos[2]
execute as @e[type=dolphin] run data modify entity @s TreasurePosY set from entity @p Pos[1]
execute as @e[type=dolphin] run data modify entity @s TreasurePosX set from entity @p Pos[0]
execute as @e[type=dolphin] run data modify entity @s CanFindTreasure set value 1b