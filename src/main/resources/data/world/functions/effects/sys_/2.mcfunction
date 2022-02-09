
scoreboard objectives add regud dummy
scoreboard players add @e[name=dmain,type=marker] regud 1
scoreboard players operation @e[name=dmain,type=marker] blocktd = @e[name=dmain,type=marker] blockt
scoreboard players add @e[name=dmain,type=marker] blocktd 5
scoreboard players operation @e[name=dmain,type=marker] blocktd -= @e[name=dmain,type=marker] regud