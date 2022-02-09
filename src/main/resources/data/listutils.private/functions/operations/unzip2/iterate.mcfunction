
function listutils.private:operations/unzip2/iterate_/0
execute store success score $listutils.success listutils.out run 
execute if score $listutils.success listutils.out matches 0 run scoreboard players set $listutils.iterator.length listutils.var 1
function listutils.private:operations/unzip2/iterate_/3
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/unzip2/iterate