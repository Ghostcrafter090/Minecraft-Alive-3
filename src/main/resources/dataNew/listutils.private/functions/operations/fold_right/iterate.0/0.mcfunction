






scoreboard players remove $listutils.current_index listutils.in 1
data modify storage listutils:fold In set from storage listutils.private:iterator Root.Iterable[-1]
function listutils.custom:fold/main
data modify storage listutils:fold Result set from storage listutils:fold Out
data remove storage listutils.private:iterator Root.Iterable[-1]