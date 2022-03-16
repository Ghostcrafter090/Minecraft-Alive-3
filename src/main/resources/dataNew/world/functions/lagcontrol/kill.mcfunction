
execute at @s run function world:lagcontrol/kill.0/0
execute if entity @s[tag=_background] run kill @s[tag=!dimensional]
execute if entity @s[tag=mina] run kill @s[tag=!dimensional]