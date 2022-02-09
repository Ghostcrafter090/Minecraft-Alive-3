
function minecraft_alive_strpd:data/world/functions/weather/windeffect_/0
execute as @a[scores={windspeed=..3}] if entity @e[name=dmain,scores={windpulse=10..}] run function world:weather/wind/wind3
execute as @a[scores={windspeed=4..4}] if entity @e[name=dmain,scores={windpulse=10..}] run function world:weather/wind/wind4
execute as @a[scores={windspeed=5..5}] if entity @e[name=dmain,scores={windpulse=10..}] run function world:weather/wind/wind5
execute as @a[scores={windspeed=6..6}] if entity @e[name=dmain,scores={windpulse=10..}] run function world:weather/wind/wind6
execute as @a[scores={windspeed=7..7}] if entity @e[name=dmain,scores={windpulse=10..}] run function world:weather/wind/wind7
execute as @a[scores={windspeed=8..8}] if entity @e[name=dmain,scores={windpulse=10..}] run function world:weather/wind/wind8
execute as @a[scores={windspeed=9..9}] if entity @e[name=dmain,scores={windpulse=10..}] run function world:weather/wind/wind9
execute as @a[scores={windspeed=10..}] if entity @e[name=dmain,scores={windpulse=10..}] run function world:weather/wind/wind10
execute if entity @e[name=dmain,scores={windpulse=10..}] run scoreboard players set @e[name=dmain] windpulse 0
execute as @a run function minecraft_alive_strpd:data/world/functions/weather/windeffect_/10
execute as @a store result score @s windspeed if entity @e[type=marker]
execute as @a run scoreboard players operation @s windspeed /= @s wn_derpb
scoreboard players add @e[name=dmain] windpulse 1