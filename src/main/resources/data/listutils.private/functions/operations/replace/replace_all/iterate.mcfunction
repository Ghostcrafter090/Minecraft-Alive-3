
function listutils.private:operations/replace/replace_all/iterate_/0
execute unless score $listutils.compare.result listutils.out matches 0 run data modify storage listutils:out List prepend from storage listutils.private:iterator Root.Iterable[-1]
execute if score $listutils.compare.result listutils.out matches 0 store success score $listutils.operation.success listutils.var run data modify storage listutils:out List prepend from storage listutils:in ReplaceData
execute if score $listutils.compare.result listutils.out matches 0 if score $listutils.operation.success listutils.var matches 1 run scoreboard players add $listutils.result listutils.out 1
data remove storage listutils.private:iterator Root.Iterable[-1]
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/replace/replace_all/iterate