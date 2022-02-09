
execute as @e[scores={airfill=1..1}] run function world:grabentity
execute as @e[scores={waterfill=1..1}] run function world:grabentity
function world:worldload
scoreboard players set @e[name=dmain] lreg 0