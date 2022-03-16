



data modify storage listutils:in List set from storage minecraft:entity.location load
scoreboard players add @e[tag=!notick,tag=dmain] listindex 1
scoreboard players operation $listutils.index listutils.in = @e[tag=!notick,tag=dmain] listindex
function listutils:data_at
tp @e[tag=!notick,name=load] 0 254 0