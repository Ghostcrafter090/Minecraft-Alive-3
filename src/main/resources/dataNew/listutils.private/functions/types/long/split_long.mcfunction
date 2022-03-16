
data modify entity @s Color set from storage listutils.private:types TypeData
execute store result score $listutils.types.long.integral.low listutils.var run data get entity @s Color
execute store result score $listutils.types.long.integral.high listutils.var run data get storage listutils.private:types TypeData 0.00000000023283064365386962890625