# Define
scoreboard objectives add MyddraalHit minecraft.custom:minecraft.damage_taken
scoreboard objectives add MyddraalHita health
scoreboard objectives add MyddraalHitb dummy
scoreboard objectives add MMfix dummy
scoreboard players set @a MMfix 10
scoreboard objectives add rot0 dummy
scoreboard objectives add rot1 dummy
scoreboard objectives add rot2 dummy
scoreboard objectives add rot3 dummy

# Main
execute as @a at @s if entity @e[type=wither_skeleton,tag=Myddraal,distance=0..45] run function world:extras/myddraal/util/main

# General Effects
execute as @e[type=wither_skeleton,tag=Myddraal] at @s run particle minecraft:crimson_spore ~ ~ ~ 1 1 1 1 50 force

# Death Effects
execute as @e[type=armor_stand,name=deathdetect] at @s unless entity @e[type=wither_skeleton,tag=Myddraal,distance=0..2] run function world:extras/myddraal/death

# Spawnning
function world:extras/myddraal/spawn