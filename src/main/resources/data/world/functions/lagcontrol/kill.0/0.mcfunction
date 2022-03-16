
execute unless entity @s[tag=sawayig] unless entity @a[distance=0..40] run kill @s[tag=!dimensional]
execute if entity @s[tag=sawayig] unless entity @a[distance=0..40] run data modify entity @s Health set value 5