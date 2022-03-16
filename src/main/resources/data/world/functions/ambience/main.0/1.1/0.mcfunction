


execute at @s store result score @s biomea run loot spawn ~ -100 ~ loot find_biome:custom/biome
execute at @s as @e[tag=!notick,type=item,nbt={Item:{id:"minecraft:structure_void"}}] store result score @p biome run data get entity @s Item.Count 1