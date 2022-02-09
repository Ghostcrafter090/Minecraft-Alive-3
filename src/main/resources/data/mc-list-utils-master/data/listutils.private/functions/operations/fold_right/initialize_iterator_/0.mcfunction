
scoreboard players set $listutils.result listutils.out 0
scoreboard players set $listutils.break listutils.out 0
scoreboard players operation $listutils.current_index listutils.in = $listutils.length listutils.var
data modify storage listutils.private:iterator Root.Iterable set from storage listutils:in List
data modify storage listutils:fold Result set from storage listutils:in Data
data modify storage listutils:fold Out set value {}
scoreboard players operation $listutils.fold listutils.out = $listutils.init_value listutils.in