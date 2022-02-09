
function mc-list-utils-master:data/listutils.private/functions/operations/zip2/initialize_iterator_/0
execute if score $listutils.operation.length1 listutils.var > $listutils.operation.length2 listutils.var run function listutils.private:operations/zip2/trim_list1
execute if score $listutils.operation.length1 listutils.var < $listutils.operation.length2 listutils.var run function listutils.private:operations/zip2/trim_list2
execute if score $listutils.operation.length1 listutils.var = $listutils.operation.length2 listutils.var run scoreboard players operation $listutils.iterator.length listutils.var = $listutils.operation.length1 listutils.var