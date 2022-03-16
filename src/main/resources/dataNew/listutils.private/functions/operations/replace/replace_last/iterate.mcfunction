
function listutils.private:operations/replace/replace_last/iterate.0/0
execute unless score $listutils.compare.result listutils.out matches 0 run data modify storage listutils:out List prepend from storage listutils.private:iterator Root.Iterable[-1]
execute if score $listutils.compare.result listutils.out matches 0 store success score $listutils.success listutils.out run data modify storage listutils:out List prepend from storage listutils:in ReplaceData
data remove storage listutils.private:iterator Root.Iterable[-1]
execute if score $listutils.compare.result listutils.out matches 0 unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/replace/replace_last/iterate_end
execute unless score $listutils.compare.result listutils.out matches 0 unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/replace/replace_last/iterate