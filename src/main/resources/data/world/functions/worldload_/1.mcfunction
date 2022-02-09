
execute store result score $length lengthObj run data get storage minecraft:entity.location load
scoreboard players operation @e[name=load] listindex = @e[name=dmain] listindex
scoreboard players operation @e[name=load] listindex -= $length lengthObj
execute if entity @e[name=load,scores={listindex=0..}] run scoreboard players set @e[name=dmain] listindex -1
data modify storage listutils:in List set from storage minecraft:entity.location load
scoreboard players add @e[name=dmain] listindex 1
scoreboard players operation $listutils.index listutils.in = @e[name=dmain] listindex
function listutils:data_at
tp @e[name=load] 0 254 0