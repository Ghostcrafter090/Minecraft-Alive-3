
execute if score $listutils.function listutils.in matches 0 run function listutils.private:operations/contains/exact_match/contains
execute unless score $listutils.function listutils.in matches 0 run function listutils.private:operations/delete/delete_first/delete_first.0/1
execute if score $listutils.success listutils.out matches 1 run function listutils.private:operations/delete/delete_first/iterate_start