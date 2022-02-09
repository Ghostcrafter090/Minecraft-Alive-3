
function mc-list-utils-master:data/listutils.private/functions/operations/count/custom_match/iterate_/0
execute if score $listutils.compare.result listutils.out matches 0 run scoreboard players add $listutils.result listutils.out 1
function mc-list-utils-master:data/listutils.private/functions/operations/count/custom_match/iterate_/2
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/count/custom_match/iterate