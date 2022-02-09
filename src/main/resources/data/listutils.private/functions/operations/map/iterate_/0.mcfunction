
scoreboard players remove $listutils.current_index listutils.in 1
data modify storage listutils:map In set from storage listutils.private:iterator Root.Iterable[-1]
function listutils.custom:map/main
data modify storage listutils:out List prepend from storage listutils:map Out
data remove storage listutils.private:iterator Root.Iterable[-1]