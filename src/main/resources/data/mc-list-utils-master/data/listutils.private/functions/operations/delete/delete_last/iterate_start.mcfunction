
function listutils.private:operations/delete/delete_last/initialize_iterator
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/delete/delete_last/iterate
execute unless score $listutils.compare.result listutils.out matches 0 run scoreboard players set $listutils.success listutils.out 0