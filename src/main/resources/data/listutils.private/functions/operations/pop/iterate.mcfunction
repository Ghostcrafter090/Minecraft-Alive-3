
scoreboard players remove $listutils.iterator.length listutils.var 1
execute unless score $listutils.iterator.length listutils.var = $listutils.iterator.index listutils.var store success score $listutils.success listutils.out run data modify storage listutils:out List prepend from storage listutils.private:iterator Root.Iterable[-1]
execute if score $listutils.iterator.length listutils.var = $listutils.iterator.index listutils.var run data modify storage listutils:out Data set from storage listutils.private:iterator Root.Iterable[-1]
data remove storage listutils.private:iterator Root.Iterable[-1]
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/pop/iterate