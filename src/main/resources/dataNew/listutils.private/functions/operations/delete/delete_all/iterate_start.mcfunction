
function listutils.private:operations/delete/delete_all/initialize_iterator
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/delete/delete_all/iterate
execute if score $listutils.result listutils.out matches 0 run scoreboard players set $listutils.success listutils.out 0