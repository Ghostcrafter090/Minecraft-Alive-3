
scoreboard objectives add creeperfire dummy
execute store result score @s creeperfire run data get entity @s Fire
execute if entity @s[scores={creeperfire=1..}] run data modify entity @s ignited set value 1b
execute at @s run function world:extras/creeper/fire.0/3
function world:extras/creeper/fire.0/4
execute as @e[tag=!notick,type=creeper,nbt={ActiveEffects:[{Id:20b}]}] run data modify entity @s ignited set value 1b