
scoreboard objectives add creeperfire dummy
execute as @e[type=creeper] run function world:extras/creeper/fire_/1
function world:extras/creeper/fire_/2
execute as @e[type=creeper,nbt={ActiveEffects:[{Id:20b}]}] run data modify entity @s ignited set value 1b