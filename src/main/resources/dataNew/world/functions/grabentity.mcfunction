
function world:grabentity.0/0
execute store success score @e[tag=!notick,tag=dmain,type=marker] outindexa run data get storage minecraft:entity.location uuid
function world:grabentity.0/2
execute store result score $length lengthObja run data get storage listutils:examples ExampleList
scoreboard players operation @e[tag=dmain,type=marker] outindex = $listutils.success listutils.out
execute if entity @e[tag=dmain,type=marker,scores={outindexa=0..0}] run scoreboard players set @e[tag=dmain,type=marker] outindex -1
execute if entity @e[tag=dmain,type=marker,scores={outindex=0..0}] run function world:grabentity.0/6
execute if entity @e[tag=dmain,type=marker,scores={outindex=-1..-1}] run scoreboard players set $listutils.result listutils.out 0
execute if entity @e[tag=dmain,type=marker,scores={outindex=-1..0}] run function world:grabentity.0/8
function world:grabentity.0/9