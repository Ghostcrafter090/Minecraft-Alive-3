
scoreboard objectives add aboveground dummy
execute in minecraft:overworld run function minecraft_alive_strpd:data/world/functions/weather/effects_/1
execute as @a[scores={aboveground=0..0}] run stopsound @a master minecraft:weather.rain
execute in minecraft:overworld run function minecraft_alive_strpd:data/world/functions/weather/effects_/3
execute as @a run function minecraft_alive_strpd:data/world/functions/weather/effects_/4