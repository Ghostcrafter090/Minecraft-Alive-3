
scoreboard objectives add endStage dummy
execute store result score @e[name=dmain,type=marker] timeGet run time query daytime
execute unless entity @e[name=dmain,type=marker,scores={timeGet=17950..18050}] run time add 10
execute if entity @e[name=dmain,type=marker,scores={timeGet=17950..18050}] run time set 18000
function world:bosses/ender/effects_/4
execute as @e[type=enderman] run function world:bosses/ender/effects_/5
execute if entity @a[advancements={minecraft:recipes/misc/ender_eye=true}] run scoreboard players set @s endStage 1
execute if entity @a[advancements={minecraft:recipes/decorations/end_crystal=true}] run scoreboard players set @s endStage 2
execute if entity @a[advancements={minecraft:story/follow_ender_eye=true}] run scoreboard players set @s endStage 3
execute if entity @a[advancements={minecraft:story/enter_the_end=true}] run scoreboard players set @s endStage 4
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] run function world:bosses/ender/effects_/10