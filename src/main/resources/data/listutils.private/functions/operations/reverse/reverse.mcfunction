
function listutils.private:operations/reverse/reverse_/0
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/reverse/iterate
scoreboard players set $listutils.success listutils.out 1