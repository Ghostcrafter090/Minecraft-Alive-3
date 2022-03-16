









execute store result score $length lengthObj run data get storage minecraft:entity.location load
scoreboard players operation @e[tag=!notick,name=load] listindex = @e[tag=!notick,tag=dmain] listindex
scoreboard players operation @e[tag=!notick,name=load] listindex -= $length lengthObj
execute if entity @e[tag=!notick,name=load,scores={listindex=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] listindex -1
data modify storage listutils:in List set from storage minecraft:entity.location load
scoreboard players add @e[tag=!notick,tag=dmain] listindex 1
scoreboard players operation $listutils.index listutils.in = @e[tag=!notick,tag=dmain] listindex
function listutils:data_at
tp @e[tag=!notick,name=load] 0 254 0