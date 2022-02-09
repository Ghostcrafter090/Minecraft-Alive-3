
function minecraft_alive_strpd:data/world/functions/worldload_/0
execute if entity @e[name=dmain,scores={startworldclock=1..1}] run function minecraft_alive_strpd:data/world/functions/worldload_/1
function minecraft_alive_strpd:data/world/functions/worldload_/2
execute store result score @e[name=load] workerx run data get storage entity.location loadwork
execute store result score @e[name=load] workerposx as @e[name=load] run data get entity @s Pos[0]
function minecraft_alive_strpd:data/world/functions/worldload_/5
execute as @e[name=load,scores={workerx=..-1}] unless entity @s[scores={workerposax=-5..5}] at @s run tp @s ~-10 ~ ~
execute as @e[name=load,scores={workerx=1..}] unless entity @s[scores={workerposax=-5..5}] at @s run tp @s ~10 ~ ~
data modify storage entity.location loadwork set from storage listutils:out Data[2]
execute store result score @e[name=load] workerz run data get storage entity.location loadwork
execute store result score @e[name=load] workerposz as @e[name=load] run data get entity @s Pos[2]
function minecraft_alive_strpd:data/world/functions/worldload_/11
execute as @e[name=load,scores={workerz=..-1}] unless entity @s[scores={workerposaz=-5..5}] at @s run tp @s ~ ~ ~-10
execute as @e[name=load,scores={workerz=1..}] unless entity @s[scores={workerposaz=-5..5}] at @s run tp @s ~ ~ ~10
execute as @e[name=load] run function minecraft_alive_strpd:data/world/functions/worldload_/14
execute unless entity @e[name=dmain] run summon marker 0 254 0 {CustomNameVisible:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"dmain"}'}
execute unless entity @e[name=load] run summon marker 0 254 0 {CustomNameVisible:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"load"}'}
execute as @e[name=load] at @s run tp @s ~ 256 ~
execute at @e[name=load] run forceload add ~17 ~17 ~-17 ~-17
execute store result score @e[name=dmain] loadCount if entity @e[name=load]
execute if entity @e[name=dmain,scores={loadCount=3..}] run function minecraft_alive_strpd:data/world/functions/worldload_/20