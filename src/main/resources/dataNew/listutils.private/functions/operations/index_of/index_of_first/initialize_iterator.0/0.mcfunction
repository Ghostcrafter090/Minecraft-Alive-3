






scoreboard players set $listutils.success listutils.out 0
scoreboard players set $listutils.iterator.index listutils.var -1
scoreboard players operation $listutils.iterator.length listutils.var = $listutils.length listutils.var
data modify storage listutils.private:iterator Root.Iterable set from storage listutils:in List
data modify storage listutils.private:compare Root.DataR set from storage listutils:in Data