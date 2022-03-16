# Define
scoreboard objectives add debugtime dummy

# Main
execute if entity @a[scores={debugtime=1..1}] run debug start
scoreboard players add @a debug 1
execute if entity @a[scores={debug=100..100}] run debug stop
execute if entity @a[scores={debug=100..100}] run debug report
