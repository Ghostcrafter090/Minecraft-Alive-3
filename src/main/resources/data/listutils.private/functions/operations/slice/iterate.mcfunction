
execute if score $listutils.iterator.length listutils.var = $listutils.iterator.index.last listutils.var run function listutils.private:operations/slice/iterate_end
function listutils.private:operations/slice/iterate.0/1
execute unless score $listutils.iterator.length listutils.var matches ..0 run function listutils.private:operations/slice/iterate