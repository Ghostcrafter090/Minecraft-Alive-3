
execute store result score $length lengthObj run data get storage minecraft:entity.location load
function world:worldload.0/1.1/1
execute if entity @e[tag=!notick,name=load,scores={listindex=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] listindex -1
function world:worldload.0/1.1/3