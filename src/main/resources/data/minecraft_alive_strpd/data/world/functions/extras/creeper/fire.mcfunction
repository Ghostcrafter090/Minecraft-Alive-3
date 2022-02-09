
scoreboard objectives add creeperfire dummy
execute as @e[type=creeper] run function minecraft_alive_strpd:data/world/functions/extras/creeper/fire_/1
function minecraft_alive_strpd:data/world/functions/extras/creeper/fire_/2
execute as @e[type=creeper,nbt={ActiveEffects:[{Id:20b}]}] run data modify entity @s ignited set value 1b