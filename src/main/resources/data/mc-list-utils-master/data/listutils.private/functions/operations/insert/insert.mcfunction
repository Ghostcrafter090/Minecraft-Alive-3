
function mc-list-utils-master:data/listutils.private/functions/operations/insert/insert_/0
execute if score $listutils.index listutils.in matches ..-1 run scoreboard players operation $listutils.iterator.index listutils.var += $listutils.index listutils.in
execute if score $listutils.index listutils.in matches 0.. run scoreboard players operation $listutils.iterator.index listutils.var = $listutils.index listutils.in
execute unless score $listutils.iterator.index listutils.var matches ..0 unless score $listutils.iterator.index listutils.var >= $listutils.length listutils.var run function listutils.private:operations/insert/iterate_start
execute if score $listutils.iterator.index listutils.var matches 0 run function listutils.private:operations/insert/copy_and_prepend
execute if score $listutils.iterator.index listutils.var = $listutils.length listutils.var run function listutils.private:operations/insert/copy_and_append
execute if score $listutils.iterator.index listutils.var matches ..-1 run scoreboard players set $listutils.success listutils.out 0
execute if score $listutils.iterator.index listutils.var > $listutils.length listutils.var run scoreboard players set $listutils.success listutils.out 0