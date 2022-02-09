
execute as @e[name=storm] run scoreboard players set @a wt_distancea 0
execute as @e[name=storm] run scoreboard players set @a wt_distanceb 0
execute as @e[name=storm] run scoreboard players set @a wt_distancec 30000000
execute as @e[name=storm] run scoreboard players set @a wt 0
execute as @e[name=storm] run function world:weather/getpos
function world:weather/effects