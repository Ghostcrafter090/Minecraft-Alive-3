
function listutils.private:operations/contains/custom_match/contains_/0
execute if score $listutils.compare.result listutils.out matches 0 run scoreboard players set $listutils.success listutils.out 1
execute if score $listutils.compare.result listutils.out matches 1 run scoreboard players set $listutils.success listutils.out 0
scoreboard players operation $listutils.result listutils.out = $listutils.success listutils.out