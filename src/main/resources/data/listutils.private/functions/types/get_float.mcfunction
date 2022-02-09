
execute store result score $listutils.types.float.start listutils.var run data get storage listutils.private:types TypeData 1.0
scoreboard players set $listutils.types.float.iterations listutils.var 0
execute unless score $listutils.types.float.start listutils.var matches -999999999..999999999 run function listutils.private:types/float/scale_down
execute if score $listutils.types.float.start listutils.var matches -99999999..99999999 run function listutils.private:types/float/scale_up
scoreboard players reset $listutils.types.float.iter_count listutils.var