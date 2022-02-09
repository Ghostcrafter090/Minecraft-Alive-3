
function listutils.private:operations/index_of/index_of_all/iterate_/0
execute if score $listutils.compare.result listutils.out matches 0 run function listutils.private:operations/index_of/index_of_all/append_index
data remove storage listutils.private:iterator Root.Iterable[-1]
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/index_of/index_of_all/iterate