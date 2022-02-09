
function listutils.private:operations/data_at/data_at_/0
execute if score $listutils.index listutils.in matches ..-1 run scoreboard players operation $listutils.iterator.index listutils.var += $listutils.index listutils.in
execute if score $listutils.index listutils.in matches 0.. run scoreboard players operation $listutils.iterator.index listutils.var = $listutils.index listutils.in
execute unless score $listutils.iterator.index listutils.var matches ..-1 unless score $listutils.iterator.index listutils.var >= $listutils.length listutils.var run function listutils.private:operations/data_at/iterate_start
execute if score $listutils.iterator.index listutils.var matches ..-1 run function listutils.private:operations/data_at/return_failure
execute if score $listutils.iterator.index listutils.var >= $listutils.length listutils.var run function listutils.private:operations/data_at/return_failure