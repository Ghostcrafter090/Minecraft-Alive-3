
function mc-list-utils-master:data/listutils.private/functions/operations/zip2/iterate_/0
execute store success score $listutils.success listutils.out run data modify storage listutils.private:iterator TempList append from storage listutils.private:iterator Root.Iterable2[-1]
function mc-list-utils-master:data/listutils.private/functions/operations/zip2/iterate_/2
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/zip2/iterate