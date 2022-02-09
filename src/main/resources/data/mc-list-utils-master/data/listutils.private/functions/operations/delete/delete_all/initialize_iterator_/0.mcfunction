
scoreboard players set $listutils.result listutils.out 0
scoreboard players operation $listutils.iterator.length listutils.var = $listutils.length listutils.var
data modify storage listutils.private:iterator Root.Iterable set from storage listutils:in List
data modify storage listutils.private:compare Root.DataR set from storage listutils:in Data