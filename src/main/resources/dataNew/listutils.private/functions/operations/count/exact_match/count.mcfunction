
function listutils.private:operations/count/exact_match/count.0/0
execute store success score $listutils.operation.success listutils.var store result score $listutils.operation.diff listutils.var run data modify storage listutils:copies Count.List[] set from storage listutils:in Data
execute unless score $listutils.length listutils.var matches 0 unless score $listutils.operation.diff listutils.var = $listutils.length listutils.var run function listutils.private:operations/count/exact_match/diff_neq_length
function listutils.private:operations/count/exact_match/count.0/3
execute if score $listutils.success listutils.out matches 0 run scoreboard players set $listutils.result listutils.out 0