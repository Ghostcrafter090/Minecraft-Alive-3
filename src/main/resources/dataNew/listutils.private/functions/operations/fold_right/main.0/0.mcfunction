







function listutils.private:internal/length
scoreboard players set $listutils.success listutils.out 1
function listutils.private:operations/fold_right/initialize_iterator
function listutils.private:operations/fold_right/iterate
data modify storage listutils:out Data set from storage listutils:fold Result
scoreboard players operation $listutils.result listutils.out = $listutils.fold listutils.out