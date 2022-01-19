function world:util/random
data modify storage listutils:in List set from storage villagers:names evilNames
scoreboard players operation $listutils.index listutils.in = @r random50
function listutils:data_at
execute unless data entity @s CustomName run data modify entity @s CustomName set from storage listutils:out Data
tag @s add named