




scoreboard players set @e[tag=!notick,type=marker,tag=dmain] regun 10
scoreboard players operation @e[tag=!notick,type=marker,tag=dmain] regun -= @e[tag=!notick,type=marker,tag=dmain] blockt
scoreboard players operation @e[tag=!notick,type=marker,tag=dmain] moriatic += @e[tag=!notick,type=marker,tag=dmain] blockt
execute unless entity @e[tag=!notick,type=marker,tag=dmain,scores={starttime=..12}] run scoreboard players operation @e[tag=!notick,type=marker,tag=dmain] starttime += @e[tag=!notick,type=marker,tag=dmain] blockt