
execute at @s in mca:the_blight run tp @s ~ ~ ~
scoreboard players set @s enteredBlight 1
execute as @e[tag=!notick,tag=sawayig] run function world:run.0/137.1/2
execute at @s run scoreboard players set @s blightEnter 150