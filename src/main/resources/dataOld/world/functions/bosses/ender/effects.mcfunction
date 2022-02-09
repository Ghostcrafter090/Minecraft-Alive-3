# Define
scoreboard objectives add endStage dummy

# Main
execute store result score @e[name=dmain,type=marker] timeGet run time query daytime
execute unless entity @e[name=dmain,type=marker,scores={timeGet=17950..18050}] run time add 10
execute if entity @e[name=dmain,type=marker,scores={timeGet=17950..18050}] run time set 18000
scoreboard players set @a endStage 0
scoreboard players set @e[name=dmain,type=marker] disableEnd 0
execute as @e[type=enderman] at @s run data modify entity @s AngerTime set value 2
execute as @e[type=enderman] run data modify entity @s AngryAt set from entity @e[limit=1,sort=nearest,type=!enderman,type=!item,type=!armor_stand,type=!marker,type=!item_frame,type=!minecart,type=!minecraft:chest_minecart,type=!minecraft:area_effect_cloud] UUID
execute if entity @a[advancements={minecraft:recipes/misc/ender_eye=true}] run scoreboard players set @s endStage 1
execute if entity @a[advancements={minecraft:recipes/decorations/end_crystal=true}] run scoreboard players set @s endStage 2
execute if entity @a[advancements={minecraft:story/follow_ender_eye=true}] run scoreboard players set @s endStage 3
execute if entity @a[advancements={minecraft:story/enter_the_end=true}] run scoreboard players set @s endStage 4
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=0..0}] run effect give @e[type=enderman] minecraft:regeneration 10 0
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=0..0}] run effect give @e[type=enderman] minecraft:strength 10 0
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=0..0}] run effect give @e[type=enderman] minecraft:resistance 10 0
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=1..1}] run effect give @e[type=enderman] minecraft:regeneration 10 1
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=1..1}] run effect give @e[type=enderman] minecraft:strength 10 1
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=1..1}] run effect give @e[type=enderman] minecraft:resistance 10 1
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=1..1}] run effect give @e[type=enderman] minecraft:speed 10 0
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=2..2}] run effect give @e[type=enderman] minecraft:regeneration 10 2
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=2..2}] run effect give @e[type=enderman] minecraft:strength 10 2
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=2..2}] run effect give @e[type=enderman] minecraft:resistance 10 2
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=2..2}] run effect give @e[type=enderman] minecraft:speed 10 1
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=2..2}] run effect give @e[type=enderman] minecraft:jump_boost 10 0
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=3..3}] run effect give @e[type=enderman] minecraft:regeneration 10 3
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=3..3}] run effect give @e[type=enderman] minecraft:strength 10 3
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=3..3}] run effect give @e[type=enderman] minecraft:resistance 10 3
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=3..3}] run effect give @e[type=enderman] minecraft:speed 10 2
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=3..3}] run effect give @e[type=enderman] minecraft:jump_boost 10 1
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=3..3}] as @e[type=enderman] at @s unless entity @a[distance=0..20] run effect give @e[type=enderman] minecraft:invisibility 3 0
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=4..4}] run effect give @e[type=enderman] minecraft:regeneration 10 3
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=4..4}] run effect give @e[type=enderman] minecraft:strength 10 3
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=4..4}] run effect give @e[type=enderman] minecraft:resistance 10 3
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=4..4}] run effect give @e[type=enderman] minecraft:speed 10 3
execute if entity @e[name=dmain,type=marker,scores={atic=8..8}] if entity @a[scores={endStage=4..4}] run effect give @e[type=enderman] minecraft:jump_boost 10 2