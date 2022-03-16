
function listutils.private:internal/length
execute unless score $listutils.index.first listutils.in = $listutils.index.first listutils.in run scoreboard players set $listutils.index.first listutils.in 0
execute unless score $listutils.index.last listutils.in = $listutils.index.last listutils.in run scoreboard players operation $listutils.index.last listutils.in = $listutils.length listutils.var
scoreboard players operation $listutils.iterator.index.first listutils.var = $listutils.length listutils.var
execute if score $listutils.index.first listutils.in matches ..-1 run scoreboard players operation $listutils.iterator.index.first listutils.var += $listutils.index.first listutils.in
execute if score $listutils.index.first listutils.in matches 0.. run scoreboard players operation $listutils.iterator.index.first listutils.var = $listutils.index.first listutils.in
scoreboard players operation $listutils.iterator.index.last listutils.var = $listutils.length listutils.var
execute if score $listutils.index.last listutils.in matches ..-1 run scoreboard players operation $listutils.iterator.index.last listutils.var += $listutils.index.last listutils.in
execute if score $listutils.index.last listutils.in matches 0.. run scoreboard players operation $listutils.iterator.index.last listutils.var = $listutils.index.last listutils.in
execute unless score $listutils.iterator.index.first listutils.var matches ..-1 unless score $listutils.iterator.index.first listutils.var >= $listutils.length listutils.var unless score $listutils.iterator.index.last listutils.var matches ..-1 unless score $listutils.iterator.index.last listutils.var > $listutils.length listutils.var unless score $listutils.iterator.index.first listutils.var >= $listutils.iterator.index.last listutils.var run function listutils.private:operations/slice/iterate_start