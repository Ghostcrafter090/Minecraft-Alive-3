
execute if score $listutils.function listutils.in matches 0 run function listutils.private:operations/contains/exact_match/contains
execute unless score $listutils.function listutils.in matches 0 run function mc-list-utils-master:data/listutils.private/functions/operations/replace/replace_last/main_/1
execute if score $listutils.success listutils.out matches 1 run function listutils.private:operations/replace/replace_last/iterate_start