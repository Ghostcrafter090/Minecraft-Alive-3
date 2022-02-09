
execute if score $listutils.function listutils.in matches 0 run function listutils.private:operations/contains/exact_match/contains
execute unless score $listutils.function listutils.in matches 0 run run function listutils.private:operations/index_of/index_of_last/index_of_last_/1
execute if score $listutils.success listutils.out matches 0 run scoreboard players set $listutils.iterator.length listutils.var -1
execute if score $listutils.success listutils.out matches 1 run function listutils.private:operations/index_of/index_of_last/iterate_start
scoreboard players operation $listutils.result listutils.out = $listutils.iterator.length listutils.var
execute unless score $listutils.result listutils.out matches -1 run scoreboard players set $listutils.success listutils.out 1