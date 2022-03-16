
function listutils.private:operations/count/custom_match/iterate.0/0
execute if score $listutils.compare.result listutils.out matches 0 run scoreboard players add $listutils.result listutils.out 1
function listutils.private:operations/count/custom_match/iterate.0/2
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/count/custom_match/iterate