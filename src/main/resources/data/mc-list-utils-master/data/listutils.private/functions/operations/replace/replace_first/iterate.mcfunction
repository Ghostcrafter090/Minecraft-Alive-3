
function mc-list-utils-master:data/listutils.private/functions/operations/replace/replace_first/iterate_/0
execute unless score $listutils.compare.result listutils.out matches 0 run data modify storage listutils:out List append from storage listutils.private:iterator Root.Iterable[0]
execute if score $listutils.compare.result listutils.out matches 0 store success score $listutils.success listutils.out run data modify storage listutils:out List append from storage listutils:in ReplaceData
data remove storage listutils.private:iterator Root.Iterable[0]
execute if score $listutils.compare.result listutils.out matches 0 unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/replace/replace_first/iterate_end
execute unless score $listutils.compare.result listutils.out matches 0 unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/replace/replace_first/iterate