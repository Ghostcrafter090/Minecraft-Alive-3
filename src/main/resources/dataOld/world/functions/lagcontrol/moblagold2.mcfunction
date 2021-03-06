# Define
scoreboard objectives add mobscrolltic dummy
scoreboard objectives add logMcaDebug dummy

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
# execute as @e[type=evoker,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
# execute as @e[type=evoker_fangs,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=experience_bottle,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=experience_orb,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=eye_of_ender,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=falling_block,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=fireball,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=fishing_bobber,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=hoglin,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=horse,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
# execute as @e[type=illusioner,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=item,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=llama_spit,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=magma_cube,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=phantom,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=pig,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=piglin,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=piglin_brute,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=potion,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=pufferfish,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=bee,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=wolf,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
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
# execute as @e[type=stray,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
# execute as @e[type=vex,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
# execute as @e[type=vindicator,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=witch,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=wither_skull,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=zoglin,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=zombie,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[scores={airfill=1..1},tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=minecraft:zombified_piglin,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=glow_squid,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=axolotl,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=polar_bear,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=guardian,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=goat,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=creeper,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=squid,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=bat,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=zombie_villager,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=turtle,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=donkey,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=mule,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=cat,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=ocelot,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=rabbit,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=dolphin,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=drowned,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=fox,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=tropical_fish,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[tag=body,type=armor_stand,tag=!lagcontrol,tag=!nokill,limit=10,sort=random] run tag @s add lagcontrol

scoreboard objectives add kill_ent dummy
scoreboard objectives add kill_max dummy
execute unless entity @e[name=dmain,scores={kill_max=0..}] run scoreboard players set @e[name=dmain] kill_max 530
execute store result score @e[name=dmain] kill_ent if entity @e[tag=lagcontrol]
scoreboard players operation @e[name=dmain] kill_ent -= @e[name=dmain] kill_max
execute if entity @e[name=dmain,scores={kill_ent=1..}] as @e[tag=lagcontrol,tag=!nokill,limit=20,sort=random] run function world:lagcontrol/kill
execute if entity @e[name=dmain,scores={kill_ent=1..}] if entity @e[name=dmain,type=marker,scores={logMcaDebug=1..1}] run say [Alive] - Max killable entities detected. Clearing...

scoreboard objectives add notick_ent dummy
scoreboard objectives add notick_max dummy
execute unless entity @e[name=dmain,scores={notick_max=0..}] run scoreboard players set @e[name=dmain] notick_max 50
execute store result score @e[name=dmain] notick_ent if entity @e[tag=notick]
scoreboard players operation @e[name=dmain] notick_ent -= @e[name=dmain] notick_max
execute if entity @e[name=dmain,scores={notick_ent=1..}] as @e[tag=notick,limit=20,sort=random] run function world:lagcontrol/kill
execute if entity @e[name=dmain,scores={notick_ent=1..}] if entity @e[name=dmain,type=marker,scores={logMcaDebug=1..1}] run say [Alive] - Max notick entities detected. Clearing...

scoreboard objectives add mina_ent dummy
scoreboard objectives add mina_max dummy
execute unless entity @e[name=dmain,scores={mina_max=0..}] run scoreboard players set @e[name=dmain] mina_max 25
execute store result score @e[name=dmain] mina_ent if entity @e[tag=mina]
scoreboard players operation @e[name=dmain] mina_ent -= @e[name=dmain] mina_max
execute if entity @e[name=dmain,scores={mina_ent=1..}] as @e[tag=mina,limit=15,sort=random] run function world:lagcontrol/kill
execute if entity @e[name=dmain,scores={mina_ent=1..}] if entity @e[name=dmain,type=marker,scores={logMcaDebug=1..1}] run say [Alive] - Max Alive activity detected. Clearing...

scoreboard objectives add moria_ent dummy
scoreboard objectives add moria_max dummy
execute unless entity @e[name=dmain,scores={moria_max=0..}] run scoreboard players set @e[name=dmain] moria_max 8
execute store result score @e[name=dmain] moria_ent if entity @e[scores={airfill=1..1}]
scoreboard players operation @e[name=dmain] moria_ent -= @e[name=dmain] moria_max
execute if entity @e[name=dmain,scores={moria_ent=1..}] run kill @e[scores={airfill=1..1},limit=4,sort=random,tag=!dimensional]
execute if entity @e[name=dmain,scores={moria_ent=1..}] if entity @e[name=dmain,type=marker,scores={logMcaDebug=1..1}] run say [Alive] - Max moria entities detected. Clearing...

scoreboard objectives add all_ent dummy 
scoreboard objectives add all_max dummy 
execute if entity
execute unless entity @e[name=dmain,scores={all_max=0..}] run scoreboard players set @e[name=dmain] all_max 600
execute store result score @e[name=dmain] all_ent if entity @e
scoreboard players operation @e[name=dmain] all_ent -= @e[name=dmain] all_max 
execute if entity @e[name=dmain,scores={all_ent=1..}] run forceload remove all
# execute if entity @e[name=dmain,scores={all_ent=1..}] as @e[name=waygate] unless entity @s[scores={waygatedone=1..1}] run kill @s
execute if entity @e[name=dmain,scores={all_ent=1..}] if entity @e[name=dmain,type=marker,scores={logMcaDebug=1..1}] run say [Alive] - Max Entity Count Reached. Resetting ForceLoadedChunks...

scoreboard objectives add aac_ent dummy 
scoreboard objectives add aac_max dummy 
execute unless entity @e[name=dmain,scores={aac_max=0..}] run scoreboard players set @e[name=dmain] aac_max 25
execute store result score @e[name=dmain] aac_ent if entity @e[type=area_effect_cloud]
scoreboard players operation @e[name=dmain] aac_ent -= @e[name=dmain] aac_max 
execute if entity @e[name=dmain,scores={aac_ent=1..}] as @e[type=area_effect_cloud,limit=20,sort=random] run kill @s
execute if entity @e[name=dmain,scores={aac_ent=1..}] if entity @e[name=dmain,type=marker,scores={logMcaDebug=1..1}] run say [Alive] - Max Area Effect Clouds detected. Clearing...

function world:lagcontrol/mobs/item
function world:lagcontrol/mobs/sawayig
function world:lagcontrol/mobs/vex

# Ticker
scoreboard players add @e[name=dmain] mobscrolltic 1
scoreboard players set @e[name=dmain,scores={mobscrolltic=53..}] mobscrolltic 0