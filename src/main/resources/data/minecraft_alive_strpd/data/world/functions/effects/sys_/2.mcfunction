
scoreboard objectives add regud dummy
scoreboard players add @e[name=dmain] regud 1
scoreboard players operation @e[name=dmain] blocktd = @e[name=dmain] blockt
scoreboard players add @e[name=dmain] blocktd 5
scoreboard players operation @e[name=dmain] blocktd -= @e[name=dmain] regud