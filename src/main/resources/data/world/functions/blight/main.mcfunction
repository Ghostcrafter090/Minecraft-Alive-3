
execute as @e[tag=blight,limit=1,sort=random] at @s as @e[distance=0..15] at @s unless entity @s[tag=blight] unless entity @s[type=marker] unless entity @s[tag=sawayig] unless entity @s[scores={airtic=1..1}] run function world:blight/infect
execute at @e[tag=blight,limit=1,sort=random] run function world:blight/main_/1
function world:blight/main_/2
execute at @e[name=derp,scores={randoblight=1..1}] if block ~ ~-1 ~ mycelium run setblock ~ ~ ~ bamboo_sapling replace
execute at @e[name=derp,scores={randoblight=2..2}] if block ~ ~-1 ~ mycelium run setblock ~ ~ ~ crimson_fungus replace
execute at @e[name=derp,scores={randoblight=3..3}] if block ~ ~-1 ~ mycelium run setblock ~ ~ ~ warped_fungus replace
execute at @e[name=derp,scores={randoblight=4..4}] if block ~ ~-1 ~ mycelium run setblock ~ ~ ~ twisting_vines replace
execute at @e[name=derp,scores={randoblight=5..5}] run function world:blight/main_/7
execute at @e[name=derp,scores={randoblight=6..6}] if block ~ ~-1 ~ mycelium run setblock ~ ~-1 ~ warped_nylium replace
execute at @e[name=derp,scores={randoblight=7..7}] if block ~ ~-1 ~ mycelium run setblock ~ ~-1 ~ crimson_nylium replace
execute at @e[name=derp,scores={randoblight=8..8}] if block ~ ~-1 ~ crimson_nylium run setblock ~ ~-1 ~ mycelium replace
execute at @e[name=derp,scores={randoblight=9..9}] if block ~ ~-1 ~ warped_nylium run setblock ~ ~-1 ~ mycelium replace
execute as @e[name=derp,scores={randoblight=9..9}] run scoreboard players set @s randoblight 0
execute as @e[name=derp] run function world:blight/main_/13
execute if entity @e[name=derp,scores={rblight=1..1}] as @e[name=blight,limit=1] at @e[name=derp] run function world:blight/infect
scoreboard players set @e[name=derp] rblight 0
execute at @e[name=derp] run function world:blight/main_/16
execute as @a run function world:blight/main_/17
execute at @e[tag=blight] run function world:blight/main_/18
execute as @e[type=villager,name=blight_creature] run effect give @s wither 100000 10
execute if entity @e[type=marker,name=dmain,scores={atic=5..5}] as @e[type=villager,name=blight_creature] run say HEEEELLLLPPPPPPPP MMMMMEEEEEEEE!!!!!!!!!!!