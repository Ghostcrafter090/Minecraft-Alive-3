
function world:village/setname.0/0
execute unless data entity @s CustomName run data modify entity @s CustomName set from storage listutils:out Data
tag @s add named