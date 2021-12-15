
scoreboard objectives add all_ent dummy 
scoreboard objectives add all_max dummy 
execute unless entity @e[name=dmain,scores={all_max=0..}] run scoreboard players set @e[name=dmain] all_max 400
execute store result score @e[name=dmain] all_ent if entity @e
scoreboard players operation @e[name=dmain] all_ent -= @e[name=dmain] all_max 
execute if entity @e[name=dmain,scores={all_ent=1..}] run forceload remove all
execute if entity @e[name=dmain,scores={all_ent=1..}] as @e[name=waygate] unless entity @s[scores={waygatedone=1..1}] run kill @s
execute if entity @e[name=dmain,scores={all_ent=1..}] run say [Minecraft Alive] - Max Entity Count Reached. Resetting ForceLoadedChunks...