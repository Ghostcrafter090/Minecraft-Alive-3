
function world:util/random
data modify storage listutils:in List set from storage villagers:names normalNames
scoreboard players operation $listutils.index listutils.in = @r random50
function listutils:data_at
tag @s add named