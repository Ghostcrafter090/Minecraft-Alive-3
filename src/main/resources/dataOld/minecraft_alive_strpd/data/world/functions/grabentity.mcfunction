# Define
scoreboard objectives add lengthObja dummy
scoreboard objectives add outindex dummy
scoreboard objectives add outindexa dummy


# Main
execute store success score @e[name=dmain] outindexa run data get storage minecraft:entity.location uuid
data modify storage listutils:in List set from storage minecraft:entity.location uuid
data modify storage listutils:in Data set from entity @s UUID
function listutils:index_of_last
execute store result score $length lengthObja run data get storage listutils:examples ExampleList
scoreboard players operation @e[name=dmain] outindex = $listutils.success listutils.out
execute if entity @e[name=dmain,scores={outindexa=0..0}] run scoreboard players set @e[name=dmain] outindex -1
execute if entity @e[name=dmain,scores={outindex=0..0}] run scoreboard players operation $listutils.result listutils.out = $length lengthObja
execute if entity @e[name=dmain,scores={outindex=0..0}] run scoreboard players add $listutils.result listutils.out 1
execute if entity @e[name=dmain,scores={outindex=-1..-1}] run scoreboard players set $listutils.result listutils.out 0
execute if entity @e[name=dmain,scores={outindex=-1..0}] run data modify storage minecraft:entity.location uuid append from entity @s UUID
execute if entity @e[name=dmain,scores={outindex=-1..0}] run data modify storage minecraft:entity.location load append from entity @s Pos
data modify storage listutils:in List set from storage minecraft:entity.location load
scoreboard players operation $listutils.index listutils.in = $listutils.result listutils.out
data modify storage listutils:in ReplaceData set from entity @s Pos
function listutils:replace_index