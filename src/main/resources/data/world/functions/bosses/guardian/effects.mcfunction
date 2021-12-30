weather thunder 100000
execute as @a at @s run particle minecraft:warped_spore ~ ~ ~ 10 10 10 1 200
execute as @a at @s run particle minecraft:bubble ~ ~ ~ 5 5 5 0.1 10
execute if entity @e[name=dmain,type=marker,scores={atic=15..15}] as @e[type=dolphin] run data modify entity @s TreasurePosZ set from entity @p Pos[2]
execute if entity @e[name=dmain,type=marker,scores={atic=15..15}] as @e[type=dolphin] run data modify entity @s TreasurePosY set from entity @p Pos[1]
execute if entity @e[name=dmain,type=marker,scores={atic=15..15}] as @e[type=dolphin] run data modify entity @s TreasurePosX set from entity @p Pos[0]
execute if entity @e[name=dmain,type=marker,scores={atic=15..15}] as @e[type=dolphin] run data modify entity @s CanFindTreasure set value 1b
execute as @e[type=zombie,nbt={DrownedConversionTime:-1}] run data modify entity @s DrownedConversionTime set value 600
execute as @e[type=husk,nbt={DrownedConversionTime:-1}] run data modify entity @s DrownedConversionTime set value 600