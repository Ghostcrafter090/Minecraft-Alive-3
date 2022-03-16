
data modify storage listutils:out List set value []
execute unless score $listutils.index listutils.in = $listutils.index listutils.in run scoreboard players set $listutils.index listutils.in -1
function listutils.private:pop.0/2