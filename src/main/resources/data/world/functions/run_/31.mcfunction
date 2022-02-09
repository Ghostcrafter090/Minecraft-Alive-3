
scoreboard players set @e[type=marker,name=dmain] regun 10
scoreboard players operation @e[type=marker,name=dmain] regun -= @e[type=marker,name=dmain] blockt
scoreboard players operation @e[type=marker,name=dmain] moriatic += @e[type=marker,name=dmain] blockt
execute unless entity @e[type=marker,name=dmain,scores={starttime=..12}] run scoreboard players operation @e[type=marker,name=dmain] starttime += @e[type=marker,name=dmain] blockt