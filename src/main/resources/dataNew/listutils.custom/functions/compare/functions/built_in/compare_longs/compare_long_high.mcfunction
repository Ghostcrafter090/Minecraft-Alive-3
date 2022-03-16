
function listutils.custom:compare/functions/built_in/compare_longs/compare_long_high.0/0
execute if score $listutils.compare.long.high listutils.var = $listutils.types.long.integral.high listutils.var run function listutils.custom:compare/functions/built_in/compare_longs/compare_long_low
execute if score $listutils.compare.long.high listutils.var < $listutils.types.long.integral.high listutils.var run scoreboard players set $listutils.compare.result listutils.out -1
execute if score $listutils.compare.long.high listutils.var > $listutils.types.long.integral.high listutils.var run scoreboard players set $listutils.compare.result listutils.out 1