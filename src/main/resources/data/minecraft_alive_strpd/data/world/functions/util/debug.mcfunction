
scoreboard objectives add debugtime dummy
execute if entity @a[scores={debugtime=1..1}] run debug start
scoreboard players add @a debug 1
execute if entity @a[scores={debug=100..100}] run function minecraft_alive_strpd:data/world/functions/util/debug_/3