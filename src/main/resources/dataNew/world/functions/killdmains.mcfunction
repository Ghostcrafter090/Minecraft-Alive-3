
function world:killdmains.0/0
execute if score @s timeAlive >= @e[tag=!notick,tag=dmain,type=marker,limit=1,sort=random,tag=!self] killMe run scoreboard players operation @e[tag=!notick,type=marker,tag=dmain] killMe = @s timeAlive
tag @s remove self