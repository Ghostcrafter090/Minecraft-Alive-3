
function world:killdmains_/0
execute if score @s timeAlive >= @e[name=dmain,type=marker,limit=1,sort=random,tag=!self] killMe run scoreboard players operation @e[type=marker,name=dmain] killMe = @s timeAlive
tag @s remove self