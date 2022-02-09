
scoreboard objectives add aboveground dummy
execute in minecraft:overworld run function world:weather/effects_/1
execute as @a[scores={aboveground=0..0}] run stopsound @a master minecraft:weather.rain
execute in minecraft:overworld run function world:weather/effects_/3
execute as @a run function world:weather/effects_/4