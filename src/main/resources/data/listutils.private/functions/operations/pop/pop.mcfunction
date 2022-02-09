
function listutils.private:operations/pop/pop_/0
execute if score $listutils.index listutils.in matches ..-1 run scoreboard players operation $listutils.iterator.index listutils.var += $listutils.index listutils.in
execute if score $listutils.index listutils.in matches 0.. run scoreboard players operation $listutils.iterator.index listutils.var = $listutils.index listutils.in
execute unless score $listutils.iterator.index listutils.var matches ..-1 unless score $listutils.iterator.index listutils.var >= $listutils.length listutils.var run function listutils.private:operations/pop/iterate_start
execute if score $listutils.iterator.index listutils.var matches ..-1 run scoreboard players set $listutils.success listutils.out 0
execute if score $listutils.iterator.index listutils.var >= $listutils.length listutils.var run scoreboard players set $listutils.success listutils.out 0