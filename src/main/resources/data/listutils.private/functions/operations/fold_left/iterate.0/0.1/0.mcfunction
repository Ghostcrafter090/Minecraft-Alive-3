







scoreboard players add $listutils.current_index listutils.in 1
scoreboard players remove $listutils.iterator.length listutils.var 1
data modify storage listutils:fold In set from storage listutils.private:iterator Root.Iterable[0]
function listutils.custom:fold/main
data modify storage listutils:fold Result set from storage listutils:fold Out
data remove storage listutils.private:iterator Root.Iterable[0]