execute at @s unless entity @s[tag=sawayig] unless entity @a[distance=0..40] run kill @s[tag=!dimensional]
execute at @s if entity @s[tag=sawayig] unless entity @a[distance=0..40] run data modify entity @s Health set value 5
execute if entity @s[tag=_background] run kill @s[tag=!dimensional]
execute if entity @s[tag=mina] run kill @s[tag=!dimensional]