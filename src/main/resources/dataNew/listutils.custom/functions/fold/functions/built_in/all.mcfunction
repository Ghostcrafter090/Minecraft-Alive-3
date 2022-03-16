
execute store result score $listutils.fold.temp listutils.var run data get storage listutils:fold In
execute if score $listutils.fold.temp listutils.var matches 0 run scoreboard players set $listutils.break listutils.out 1
scoreboard players operation $listutils.fold listutils.out = $listutils.fold.temp listutils.var
execute unless score $listutils.fold listutils.out matches 0 run scoreboard players set $listutils.fold listutils.out 1