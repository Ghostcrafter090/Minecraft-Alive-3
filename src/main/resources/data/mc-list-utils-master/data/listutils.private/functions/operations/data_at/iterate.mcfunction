
scoreboard players remove $listutils.iterator.length listutils.var 1
execute if score $listutils.iterator.length listutils.var = $listutils.iterator.index listutils.var run function listutils.private:operations/data_at/return_success
data remove storage listutils.private:iterator Root.Iterable[-1]
execute if score $listutils.success listutils.out matches 0 unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/data_at/iterate