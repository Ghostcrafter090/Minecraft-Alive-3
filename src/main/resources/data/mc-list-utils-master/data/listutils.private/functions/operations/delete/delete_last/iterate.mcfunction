
function mc-list-utils-master:data/listutils.private/functions/operations/delete/delete_last/iterate_/0
execute unless score $listutils.compare.result listutils.out matches 0 run data modify storage listutils:out List prepend from storage listutils.private:iterator Root.Iterable[-1]
data remove storage listutils.private:iterator Root.Iterable[-1]
execute if score $listutils.compare.result listutils.out matches 0 unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/delete/delete_last/iterate_end
execute unless score $listutils.compare.result listutils.out matches 0 unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/delete/delete_last/iterate