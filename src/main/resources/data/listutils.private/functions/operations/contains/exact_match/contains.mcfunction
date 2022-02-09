
function listutils.private:operations/contains/exact_match/contains_/0
execute store success score $listutils.operation.success listutils.var store result score $listutils.operation.diff listutils.var run data modify storage listutils:copies Contains.List[] set from storage listutils:in Data
execute unless score $listutils.length listutils.var matches 0 unless score $listutils.operation.diff listutils.var = $listutils.length listutils.var run function listutils.private:operations/contains/exact_match/diff_neq_length
scoreboard players operation $listutils.result listutils.out = $listutils.success listutils.out