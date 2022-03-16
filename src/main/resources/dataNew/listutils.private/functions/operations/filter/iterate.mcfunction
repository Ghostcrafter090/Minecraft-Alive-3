
function listutils.private:operations/filter/iterate.0/0
execute unless score $listutils.filter listutils.out matches 0 run data modify storage listutils:out List prepend from storage listutils.private:iterator Root.Iterable[-1]
data remove storage listutils.private:iterator Root.Iterable[-1]
execute unless score $listutils.current_index listutils.in matches 0 run function listutils.private:operations/filter/iterate