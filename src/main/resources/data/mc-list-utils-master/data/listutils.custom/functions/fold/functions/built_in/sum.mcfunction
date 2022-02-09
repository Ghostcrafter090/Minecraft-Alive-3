
execute store result score $listutils.fold.temp listutils.var run data get storage listutils:fold In
scoreboard players operation $listutils.fold listutils.out += $listutils.fold.temp listutils.var