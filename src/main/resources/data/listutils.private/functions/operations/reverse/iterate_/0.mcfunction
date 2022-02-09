
data modify storage listutils:out List append from storage listutils.private:iterator Root.Iterable[-1]
data remove storage listutils.private:iterator Root.Iterable[-1]
scoreboard players remove $listutils.iterator.length listutils.var 1