




function world:util/randomserver
data modify storage listutils:in List set from storage villagers:names evilNames
scoreboard players operation $listutils.index listutils.in = @e[tag=!notick,tag=dmain,type=marker] random50
function listutils:data_at