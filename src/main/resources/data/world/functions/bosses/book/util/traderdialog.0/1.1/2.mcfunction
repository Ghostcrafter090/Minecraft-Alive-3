




execute at @s unless entity @a[distance=0..5] run say Come Closer!
execute at @s unless entity @a[distance=0..5] run scoreboard players set @s curTic 100
execute at @s if entity @a[distance=0..5] run scoreboard players add @s curCloseTic 1