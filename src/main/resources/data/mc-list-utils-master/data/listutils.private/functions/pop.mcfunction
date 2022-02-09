
data modify storage listutils:out List set value []
execute unless score $listutils.index listutils.in = $listutils.index listutils.in run scoreboard players set $listutils.index listutils.in -1
function mc-list-utils-master:data/listutils.private/functions/pop_/2