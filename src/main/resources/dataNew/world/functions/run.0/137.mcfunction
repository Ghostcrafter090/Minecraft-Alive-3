





execute at @s in mca:the_blight run tp @s ~ ~ ~
scoreboard players set @s enteredBlight 1
execute as @e[tag=!notick,tag=sawayig] at @s run summon tnt ~ ~ ~
execute as @e[tag=!notick,tag=sawayig] at @s run tag @s add nostuck
execute at @s run scoreboard players set @s blightEnter 150