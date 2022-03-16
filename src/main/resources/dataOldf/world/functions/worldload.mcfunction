# Define
scoreboard objectives add listindex dummy
scoreboard objectives add startworldclock dummy
scoreboard objectives add workerx dummy
scoreboard objectives add workerz dummy
scoreboard objectives add workerposx dummy
scoreboard objectives add workerposz dummy
scoreboard objectives add workerposax dummy
scoreboard objectives add workerposaz dummy
scoreboard objectives add lengthObj dummy
scoreboard objectives add lreg dummy
scoreboard objectives add startworldclock dummy
scoreboard objectives add loadCount dummy

# Clock
execute if entity @e[name=dmain,scores={startworldclock=1..1}] store result score $length lengthObj run data get storage minecraft:entity.location load
execute if entity @e[name=dmain,scores={startworldclock=1..1}] run scoreboard players operation @e[name=load] listindex = @e[name=dmain] listindex
execute if entity @e[name=dmain,scores={startworldclock=1..1}] run scoreboard players operation @e[name=load] listindex -= $length lengthObj
execute if entity @e[name=dmain,scores={startworldclock=1..1}] if entity @e[name=load,scores={listindex=0..}] run scoreboard players set @e[name=dmain] listindex -1
execute if entity @e[name=dmain,scores={startworldclock=1..1}] run data modify storage listutils:in List set from storage minecraft:entity.location load
execute if entity @e[name=dmain,scores={startworldclock=1..1}] run scoreboard players add @e[name=dmain] listindex 1
execute if entity @e[name=dmain,scores={startworldclock=1..1}] run scoreboard players operation $listutils.index listutils.in = @e[name=dmain] listindex
execute if entity @e[name=dmain,scores={startworldclock=1..1}] run function listutils:data_at
execute if entity @e[name=dmain,scores={startworldclock=1..1}] run tp @e[name=load] 0 254 0
scoreboard players set @e[name=dmain] startworldclock 0

# X
data modify storage entity.location loadwork set from storage listutils:out Data[0]
execute store result score @e[name=load] workerx run data get storage entity.location loadwork
execute store result score @e[name=load] workerposx as @e[name=load] run data get entity @s Pos[0]
scoreboard players operation @e[name=load] workerposax = @e[name=load] workerposx
scoreboard players operation @e[name=load] workerposax -= @e[name=load] workerx
execute as @e[name=load,scores={workerx=..-1}] unless entity @s[scores={workerposax=-5..5}] at @s run tp @s ~-10 ~ ~
execute as @e[name=load,scores={workerx=1..}] unless entity @s[scores={workerposax=-5..5}] at @s run tp @s ~10 ~ ~

# Z
data modify storage entity.location loadwork set from storage listutils:out Data[2]
execute store result score @e[name=load] workerz run data get storage entity.location loadwork
execute store result score @e[name=load] workerposz as @e[name=load] run data get entity @s Pos[2]
scoreboard players operation @e[name=load] workerposaz = @e[name=load] workerposz
scoreboard players operation @e[name=load] workerposaz -= @e[name=load] workerz
execute as @e[name=load,scores={workerz=..-1}] unless entity @s[scores={workerposaz=-5..5}] at @s run tp @s ~ ~ ~-10
execute as @e[name=load,scores={workerz=1..}] unless entity @s[scores={workerposaz=-5..5}] at @s run tp @s ~ ~ ~10


#0.454999

# Load
execute as @e[name=load] at @s unless entity @e[name=dmain,scores={unload=1..1}] run forceload remove ~34 ~17 ~34 ~-17
execute as @e[name=load] at @s unless entity @e[name=dmain,scores={unload=1..1}] run forceload remove ~-34 ~17 ~-34 ~-17
execute as @e[name=load] at @s unless entity @e[name=dmain,scores={unload=1..1}] run forceload remove ~17 ~34 ~-17 ~34
execute as @e[name=load] at @s unless entity @e[name=dmain,scores={unload=1..1}] run forceload remove ~17 ~-34 ~-17 ~-34
execute as @e[name=load] at @s run forceload add ~17 ~17 ~-17 ~-17

# Finish
execute as @e[name=load] if entity @s[scores={workerposax=-5..5}] if entity @s[scores={workerposaz=-5..5}] run scoreboard players set @e[name=dmain] startworldclock 1

# Main
execute unless entity @e[name=dmain] run summon marker 0 254 0 {CustomNameVisible:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"dmain"}'}
execute unless entity @e[name=load] run summon marker 0 254 0 {CustomNameVisible:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"load"}'}
execute as @e[name=load] at @s run tp @s ~ 256 ~
# execute at @e[name=load] run tp Ghostcrafter090 ~ ~ ~ facing ~ 0 ~
execute at @e[name=load] run forceload add ~17 ~17 ~-17 ~-17

# Lag Control
execute store result score @e[name=dmain] loadCount if entity @e[name=load]
execute if entity @e[name=dmain,scores={loadCount=3..}] run say [Minecraft Alive] - Max load instances detected. Clearing... 
execute if entity @e[name=dmain,scores={loadCount=3..}] run kill @e[name=load,limit=2,sort=random]










