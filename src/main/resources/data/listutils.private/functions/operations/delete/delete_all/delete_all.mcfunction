
execute if score $listutils.function listutils.in matches 0 run function listutils.private:operations/contains/exact_match/contains
execute unless score $listutils.function listutils.in matches 0 run function listutils.private:operations/delete/delete_all/delete_all_/1
execute if score $listutils.success listutils.out matches 1 run function listutils.private:operations/delete/delete_all/iterate_start