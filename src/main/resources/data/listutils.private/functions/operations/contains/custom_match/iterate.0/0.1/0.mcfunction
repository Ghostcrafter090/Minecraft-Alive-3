





data modify storage listutils.private:compare Root.DataL set from storage listutils.private:iterator Root.Iterable[-1]
function listutils.custom:compare/main
data remove storage listutils.private:iterator Root.Iterable[-1]
scoreboard players remove $listutils.iterator.length listutils.var 1