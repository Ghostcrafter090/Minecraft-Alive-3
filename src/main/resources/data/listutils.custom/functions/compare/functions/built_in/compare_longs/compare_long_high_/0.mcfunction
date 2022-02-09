
data modify storage listutils.private:types TypeData set from storage listutils.private:compare Root.DataL
function listutils.private:types/get_long
scoreboard players operation $listutils.compare.long.low listutils.var = $listutils.types.long.integral.low listutils.var
scoreboard players operation $listutils.compare.long.high listutils.var = $listutils.types.long.integral.high listutils.var
data modify storage listutils.private:types TypeData set from storage listutils.private:compare Root.DataR
function listutils.private:types/get_long