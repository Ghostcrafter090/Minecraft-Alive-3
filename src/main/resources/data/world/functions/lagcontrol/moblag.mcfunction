# Define
scoreboard objectives add mobscrolltic dummy

# Main
execute at @a run tag @e[type=item,distance=0..20] add playerfound
execute as @e[type=arrow,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=minecraft:area_effect_cloud,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[tag=blight,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[tag=machin_shin,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[tag=sawayig,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=cave_spider,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=cow,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=chicken,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=cod,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=dragon_fireball,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=egg,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=enderman,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=endermite,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=ender_pearl,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=evoker,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=evoker_fangs,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=experience_bottle,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=experience_orb,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=eye_of_ender,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=falling_block,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=fireball,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=fishing_bobber,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=hoglin,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=horse,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=illusioner,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=item,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=llama_spit,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=magma_cube,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=phantom,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=pig,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=piglin,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=piglin_brute,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=potion,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=pufferfish,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=bee,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=wolf,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=salmon,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=shulker,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=minecraft:shulker_bullet,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=silverfish,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=skeleton,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=slime,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=sheep,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=small_fireball,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=snowball,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=spectral_arrow,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=spider,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=stray,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=vex,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=vindicator,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=witch,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=wither_skull,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=zoglin,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=zombie,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[scores={airfill=1..1},tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=wolf,tag=!lagcontrol] unless data entity @s Owner run tag @s add lagcontrol
execute as @e[type=wolf,tag=lagcontrol] if data entity @s Owner run tag @s remove lagcontrol
execute as @e[type=minecraft:zombified_piglin,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol

scoreboard objectives add kill_ent dummy
scoreboard objectives add kill_max dummy
execute unless entity @e[name=dmain,scores={kill_max=0..}] run scoreboard players set @e[name=dmain] kill_max 200
execute store result score @e[name=dmain] kill_ent if entity @e[tag=lagcontrol]
scoreboard players operation @e[name=dmain] kill_ent -= @e[name=dmain] kill_max
execute if entity @e[name=dmain,scores={kill_ent=1..}] run kill @e[tag=lagcontrol,limit=20,sort=random]
execute if entity @e[name=dmain,scores={kill_ent=1..}] run say [Minecraft Alive] - Max killable entities detected. Clearing...

scoreboard objectives add moria_ent dummy
scoreboard objectives add moria_max dummy
execute unless entity @e[name=dmain,scores={moria_max=0..}] run scoreboard players set @e[name=dmain] moria_max 8
execute store result score @e[name=dmain] moria_ent if entity @e[scores={airfill=1..1}]
scoreboard players operation @e[name=dmain] moria_ent -= @e[name=dmain] moria_max
execute if entity @e[name=dmain,scores={moria_ent=1..}] run kill @e[scores={airfill=1..1},limit=4,sort=random]
execute if entity @e[name=dmain,scores={moria_ent=1..}] run say [Minecraft Alive] - Max moria entities detected. Clearing...

scoreboard objectives add all_ent dummy 
scoreboard objectives add all_max dummy 
execute unless entity @e[name=dmain,scores={all_max=0..}] run scoreboard players set @e[name=dmain] all_max 400
execute store result score @e[name=dmain] all_ent if entity @e
scoreboard players operation @e[name=dmain] all_ent -= @e[name=dmain] all_max 
execute if entity @e[name=dmain,scores={all_ent=1..}] run forceload remove all
# execute if entity @e[name=dmain,scores={all_ent=1..}] as @e[name=waygate] unless entity @s[scores={waygatedone=1..1}] run kill @s
# execute if entity @e[name=dmain,scores={all_ent=1..}] run say [Minecraft Alive] - Max Entity Count Reached. Resetting ForceLoadedChunks...

function world:lagcontrol/mobs/item

# Ticker
scoreboard players add @e[name=dmain] mobscrolltic 1
scoreboard players set @e[name=dmain,scores={mobscrolltic=53..}] mobscrolltic 0