scoreboard objectives add killMe dummy
execute if score @s timeAlive > @e[name=dmain,type=marker,limit=1] killMe run scoreboard players operation @e[type=marker,name=dmain] killMe = @s timeAlive