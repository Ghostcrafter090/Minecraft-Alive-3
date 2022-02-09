
execute store success score $listutils.error.success listutils.var run data modify storage listutils:in List append from storage listutils:in Data
execute if score $listutils.error.success listutils.var matches 1 run data remove storage listutils:in List[-1]