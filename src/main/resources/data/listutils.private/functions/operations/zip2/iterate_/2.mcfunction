
data modify storage listutils:out List prepend from storage listutils.private:iterator TempList
data remove storage listutils.private:iterator Root.Iterable[-1]
data remove storage listutils.private:iterator Root.Iterable2[-1]
scoreboard players remove $listutils.iterator.length listutils.var 1