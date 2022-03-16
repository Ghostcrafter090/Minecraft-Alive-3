
execute store result score $listutils.operation.length1 listutils.var run data get storage listutils:in List
execute store result score $listutils.operation.length2 listutils.var run data get storage listutils:in ZipList
function listutils.private:operations/zip2/initialize_iterator
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/zip2/iterate