
execute in minecraft:overworld store success score $listutils.chunk_loaded listutils.var run forceload query -30000000 8000
execute if score $listutils.chunk_loaded listutils.var matches 0 in run function mc-list-utils-master:data/listutils.private/functions/setup/forceload_/1