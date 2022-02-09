
function world:grabentity_/0
execute store success score @e[name=dmain,type=marker] outindexa run data get storage minecraft:entity.location uuid
function world:grabentity_/2
execute store result score $length lengthObja run data get storage listutils:examples ExampleList
scoreboard players operation @e[name=dmain,type=marker] outindex = $listutils.success listutils.out
execute if entity @e[name=dmain,type=marker,scores={outindexa=0..0}] run scoreboard players set @e[name=dmain,type=marker] outindex -1
execute if entity @e[name=dmain,type=marker,scores={outindex=0..0}] run function world:grabentity_/6
execute if entity @e[name=dmain,type=marker,scores={outindex=-1..-1}] run scoreboard players set $listutils.result listutils.out 0
execute if entity @e[name=dmain,type=marker,scores={outindex=-1..0}] run function world:grabentity_/8
function world:grabentity_/9