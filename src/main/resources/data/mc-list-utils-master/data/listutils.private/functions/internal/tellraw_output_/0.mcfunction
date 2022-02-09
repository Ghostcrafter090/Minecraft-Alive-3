
tellraw @p [{"text":"Success: "},{"score":{"name":"$listutils.success","objective":"listutils.out"},"color":"green"}]
tellraw @p [{"text":"Result: "},{"score":{"name":"$listutils.result","objective":"listutils.out"},"color":"yellow"}]
tellraw @p [{"text":"Output List: "},{"nbt":"List","storage":"listutils:out","color":"aqua"}]
tellraw @p [{"text":"Output Data: "},{"nbt":"Data","storage":"listutils:out","color":"aqua"}]