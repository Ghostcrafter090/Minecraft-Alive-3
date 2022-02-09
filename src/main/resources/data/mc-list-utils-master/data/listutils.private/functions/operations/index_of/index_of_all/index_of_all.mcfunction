
execute if score $listutils.function listutils.in matches 0 run function listutils.private:operations/contains/exact_match/contains
execute unless score $listutils.function listutils.in matches 0 run run function mc-list-utils-master:data/listutils.private/functions/operations/index_of/index_of_all/index_of_all_/1
execute if score $listutils.success listutils.out matches 1 run function listutils.private:operations/index_of/index_of_all/iterate_start