
execute if entity @s[scores={vpol1=1..1}] if entity @s[scores={vpol2=1..1}] if entity @s[scores={vpol3=1..1}] if entity @s[scores={vpol4=1..1}] if entity @s[scores={vpol=0..0}] run scoreboard players set @s vpol 1
execute if entity @s[scores={vpol=1..1}] run function world:village/village2.0/14.1/1
execute at @s run function world:village/village2.0/14.1/2