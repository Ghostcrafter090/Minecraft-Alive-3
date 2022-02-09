
execute if score $listutils.operation.success listutils.var matches 0 run function listutils.private:operations/contains/exact_match/check_types
execute if score $listutils.error.success listutils.var matches 1 run scoreboard players set $listutils.success listutils.out 1