
function listutils.private:operations/count/custom_match/count_/0
execute if score $listutils.result listutils.out matches 0 run scoreboard players set $listutils.success listutils.out 0
execute if score $listutils.result listutils.out matches 1.. run scoreboard players set $listutils.success listutils.out 1