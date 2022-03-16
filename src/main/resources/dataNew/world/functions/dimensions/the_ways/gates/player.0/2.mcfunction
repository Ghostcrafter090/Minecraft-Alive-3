









scoreboard players set @s posN 10
scoreboard players operation @s posX /= @s posN
scoreboard players operation @s posZ /= @s posN
scoreboard players operation @e[tag=!notick,tag=dmain,type=marker] sin0 = @s posX
function world:util/sin
scoreboard players operation @s xSin = @e[tag=!notick,tag=dmain,type=marker] sin
scoreboard players operation @e[tag=!notick,tag=dmain,type=marker] sin0 = @s posZ
function world:util/sin
scoreboard players operation @s zSin = @e[tag=!notick,tag=dmain,type=marker] sin