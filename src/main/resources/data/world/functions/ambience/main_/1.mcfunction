
execute as @a at @s store result score @s biomea run loot spawn ~ -100 ~ loot find_biome:custom/biome
execute as @a at @s as @e[type=item,nbt={Item:{id:"minecraft:structure_void"}}] store result score @p biome run data get entity @s Item.Count 1