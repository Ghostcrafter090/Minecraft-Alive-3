
function listutils.custom:compare/functions/built_in/compare_floats_/0
execute if score $listutils.compare.float.data.l listutils.var = $listutils.types.float.value listutils.var run scoreboard players set $listutils.compare.result listutils.out 0
execute if score $listutils.compare.float.data.l listutils.var < $listutils.types.float.value listutils.var run scoreboard players set $listutils.compare.result listutils.out -1
execute if score $listutils.compare.float.data.l listutils.var > $listutils.types.float.value listutils.var run scoreboard players set $listutils.compare.result listutils.out 1