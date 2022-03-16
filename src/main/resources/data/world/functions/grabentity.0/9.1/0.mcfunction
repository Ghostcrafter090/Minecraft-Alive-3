





data modify storage listutils:in List set from storage minecraft:entity.location load
scoreboard players operation $listutils.index listutils.in = $listutils.result listutils.out
data modify storage listutils:in ReplaceData set from entity @s Pos
function listutils:replace_index