
function listutils.private:operations/index_of/index_of_all/initialize_iterator
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/index_of/index_of_all/iterate
execute unless data storage listutils:out List[0] run scoreboard players set $listutils.success listutils.out 0