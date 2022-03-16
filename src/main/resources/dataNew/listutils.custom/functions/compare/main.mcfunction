
execute if score $listutils.function listutils.in matches 0 run function listutils.custom:compare/functions/built_in/compare_equal
execute if score $listutils.function listutils.in matches 1 run function listutils.custom:compare/functions/built_in/compare_subset
execute if score $listutils.function listutils.in matches 2 run function listutils.custom:compare/functions/built_in/compare_data_get
execute if score $listutils.function listutils.in matches 3 run function listutils.custom:compare/functions/built_in/compare_longs
execute if score $listutils.function listutils.in matches 4 run function listutils.custom:compare/functions/built_in/compare_floats