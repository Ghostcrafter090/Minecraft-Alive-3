# Declare
scoreboard objectives add _background_ent dummy
scoreboard objectives add _background_max dummy
scoreboard objectives add _animal_ent dummy
scoreboard objectives add _animal_max dummy
scoreboard objectives add _water_ent dummy
scoreboard objectives add _water_max dummy
scoreboard objectives add _monster_ent dummy
scoreboard objectives add _monster_max dummy
scoreboard objectives add _nether_ent dummy
scoreboard objectives add _nether_max dummy
scoreboard objectives add _end_ent dummy
scoreboard objectives add _end_max dummy
scoreboard objectives add mina_ent dummy
scoreboard objectives add mina_max dummy

# Define
execute as @e[name=dmain,type=marker] unless entity @s[scores={_background_max=-1..}] run scoreboard players set @s _background_max 40
execute as @e[name=dmain,type=marker] unless entity @s[scores={_animal_max=-1..}] run scoreboard players set @s _animal_max 200
execute as @e[name=dmain,type=marker] unless entity @s[scores={_water_max=-1..}] run scoreboard players set @s _water_max 120
execute as @e[name=dmain,type=marker] unless entity @s[scores={_monster_max=-1..}] run scoreboard players set @s _monster_max 120
execute as @e[name=dmain,type=marker] unless entity @s[scores={_nether_max=-1..}] run scoreboard players set @s _nether_max 100
execute as @e[name=dmain,type=marker] unless entity @s[scores={_end_max=-1..}] run scoreboard players set @s _end_max 40
execute as @e[name=dmain,type=marker] unless entity @s[scores={mina_max=-1..}] run scoreboard players set @s mina_max 30

# Add Tags
execute at @a run tag @e[type=item,distance=0..20,tag=!playerfound] add playerfound
execute as @e[type=area_effect_cloud,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=armor_stand,tag=!_nokill,limit=1,sort=random] run tag @s add _background
execute as @e[type=arrow,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=axolotl,tag=!_water,limit=1,sort=random] run tag @s add _water
execute as @e[type=bat,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=bee,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=blaze,tag=!_nether,limit=1,sort=random] run tag @s add _nether
execute as @e[type=boat,tag=!_ride,limit=1,sort=random] run tag @s add _ride
execute as @e[type=cat,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=cave_spider,tag=!_monster,limit=1,sort=random] run tag @s add _monster
execute as @e[type=chest_minecart,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=chicken,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=cod,tag=!_water,limit=1,sort=random] run tag @s add _water
execute as @e[type=command_block_minecart,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=cow,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=creeper,tag=!_monster,limit=1,sort=random] run tag @s add _monster
execute as @e[type=dolphin,tag=!_water,limit=1,sort=random] run tag @s add _water
execute as @e[type=donkey,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=dragon_fireball,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=drowned,tag=!_monster,limit=1,sort=random] run tag @s add _monster
execute as @e[type=egg,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=elder_guardian,tag=!_boss,limit=1,sort=random] run tag @s add _boss
execute as @e[type=end_crystal,tag=!_nokill,limit=1,sort=random] run tag @s add _background
execute as @e[type=ender_dragon,tag=!_boss,limit=1,sort=random] run tag @s add _boss
execute as @e[type=ender_pearl,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=enderman,tag=!_end,limit=1,sort=random] run tag @s add _monster
execute as @e[type=endermite,tag=!_end,limit=1,sort=random] run tag @s add _monster
execute as @e[type=evoker_fangs,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=evoker,tag=!_nokill,limit=1,sort=random] run tag @s add _nokill
execute as @e[type=experience_bottle,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=experience_orb,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=eye_of_ender,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=falling_block,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=fireball,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=firework_rocket,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=fishing_bobber,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=fox,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=furnace_minecart,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=ghast,tag=!_nether,limit=1,sort=random] run tag @s add _nether
execute as @e[type=giant,tag=!_monster,limit=1,sort=random] run tag @s add _monster
execute as @e[type=glow_item_frame,tag=!_notick,limit=1,sort=random] run tag @s add _background
execute as @e[type=glow_squid,tag=!_water,limit=1,sort=random] run tag @s add _water
execute as @e[type=goat,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=guardian,tag=!_water,limit=1,sort=random] run tag @s add _water
execute as @e[type=hoglin,tag=!_nether,limit=1,sort=random] run tag @s add _nether
execute as @e[type=horse,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=hopper_minecart,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=husk,tag=!_monster,limit=1,sort=random] run tag @s add _monster
execute as @e[type=illusioner,tag=!_nokill,limit=1,sort=random] run tag @s add _nokill
execute as @e[type=iron_golem,tag=!_nokill,limit=1,sort=random] run tag @s add _nokill
execute as @e[type=item,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=item_frame,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=leash_knot,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=lightning_bolt,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=llama,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=llama_spit,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=magma_cube,tag=!_nether,limit=1,sort=random] run tag @s add _nether
execute as @e[type=marker,tag=!_null,limit=1,sort=random] run tag @s add _null
execute as @e[type=minecart,tag=!_ride,limit=1,sort=random] run tag @s add _ride
execute as @e[type=minecart,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=mooshroom,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=mule,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=ocelot,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=painting,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=panda,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=parrot,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=phantom,tag=!_monster,tag=!blightboss,limit=1,sort=random] run tag @s add _monster
execute as @e[type=pig,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=piglin,tag=!_nether,limit=1,sort=random] run tag @s add _nether
execute as @e[type=piglin_brute,tag=!_nether,limit=1,sort=random] run tag @s add _nether
execute as @e[type=pillager,tag=!_nokill,limit=1,sort=random] run tag @s add _nokill
execute as @e[type=polar_bear,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=potion,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=pufferfish,tag=!_water,limit=1,sort=random] run tag @s add _water
execute as @e[type=rabbit,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=ravager,tag=!_nokill,limit=1,sort=random] run tag @s add _nokill
execute as @e[type=salmon,tag=!_water,limit=1,sort=random] run tag @s add _water
execute as @e[type=sheep,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=shulker,tag=!_nokill,limit=1,sort=random] run tag @s add _nokill
execute as @e[type=shulker_bullet,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=silverfish,tag=!_monster,limit=1,sort=random] run tag @s add _monster
execute as @e[type=skeleton,tag=!_monster,limit=1,sort=random] run tag @s add _monster
execute as @e[type=skeleton_horse,tag=!_monster,limit=1,sort=random] run tag @s add _animal
execute as @e[type=slime,tag=!_monster,limit=1,sort=random] run tag @s add _monster
execute as @e[type=small_fireball,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=snowball,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=snow_golem,tag=!_nokill,limit=1,sort=random] run tag @s add _nokill
execute as @e[type=spawner_minecart,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=spectral_arrow,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=spider,tag=!_monster,limit=1,sort=random] run tag @s add _monster
execute as @e[type=squid,tag=!_water,limit=1,sort=random] run tag @s add _water
execute as @e[type=stray,tag=!_monster,limit=1,sort=random] run tag @s add _monster
execute as @e[type=strider,tag=!_nether,limit=1,sort=random] run tag @s add _nether
execute as @e[type=tnt,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=tnt_minecart,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=trader_llama,tag=!_nokill,limit=1,sort=random] run tag @s add _nokill
execute as @e[type=trident,tag=!_nokill,limit=1,sort=random] run tag @s add _nokill
execute as @e[type=tropical_fish,tag=!_water,limit=1,sort=random] run tag @s add _water
execute as @e[type=turtle,tag=!_water,limit=1,sort=random] run tag @s add _water
execute as @e[type=vex,tag=!_monster,limit=1,sort=random] run tag @s add _monster
execute as @e[type=villager,tag=!_nokill,limit=1,sort=random] run tag @s add _nokill
execute as @e[type=vindicator,tag=!_nokill,limit=1,sort=random] run tag @s add _nokill
execute as @e[type=witch,tag=!_nokill,limit=1,sort=random] run tag @s add _nokill
execute as @e[type=wandering_trader,tag=!_nokill,limit=1,sort=random] run tag @s add _nokill
execute as @e[type=wither,tag=!_boss,limit=1,sort=random] run tag @s add _boss
execute as @e[type=wither_skull,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[type=wither_skeleton,tag=!_monster,limit=1,sort=random] run tag @s add _monster
execute as @e[type=wolf,tag=!_animal,limit=1,sort=random] run tag @s add _animal
execute as @e[type=zoglin,tag=!_nether,limit=1,sort=random] run tag @s add _nether
execute as @e[type=zombie,tag=!_monster,limit=1,sort=random] run tag @s add _monster
execute as @e[type=zombie_horse,tag=!_monster,limit=1,sort=random] run tag @s add _monster
execute as @e[type=zombified_piglin,tag=!_nether,limit=1,sort=random] run tag @s add _nether
execute as @e[type=zombie_villager,tag=!_monster,limit=1,sort=random] run tag @s add _monster
execute as @e[tag=body,tag=!_background,limit=1,sort=random] run tag @s add _background
execute as @e[tag=blightboss,tag=!_boss,limit=1,sort=random] run tag @s add _boss
execute as @e[tag=sawayig,tag=!_nether,limit=1,sort=random] run tag @s add _nether
execute as @e[tag=Myddraal,tag=!_nether,limit=1,sort=random] run tag @s add _nether

# Check Numbers
execute store result score @e[name=dmain,type=marker] _background_ent if entity @e[tag=_background]
execute store result score @e[name=dmain,type=marker] _animal_ent if entity @e[tag=_animal]
execute store result score @e[name=dmain,type=marker] _water_ent if entity @e[tag=_water]
execute store result score @e[name=dmain,type=marker] _monster_ent if entity @e[tag=_monster]
execute store result score @e[name=dmain,type=marker] _nether_ent if entity @e[tag=_nether]
execute store result score @e[name=dmain,type=marker] _end_ent if entity @e[tag=_end]
execute store result score @e[name=dmain,type=marker] mina_ent if entity @e[tag=mina]

# Produce Debug
execute as @e[name=dmain,type=marker,limit=1] if score @s _background_ent > @s _background_max if entity @e[name=dmain,scores={logMcaDebug=1..1}] run say [Alive] - Max background entities detected. Clearing...
execute as @e[name=dmain,type=marker,limit=1] if score @s _animal_ent > @s _animal_max if entity @e[name=dmain,scores={logMcaDebug=1..1}] run say [Alive] - Max animal entities detected. Clearing...
execute as @e[name=dmain,type=marker,limit=1] if score @s _water_ent > @s _water_max if entity @e[name=dmain,scores={logMcaDebug=1..1}] run say [Alive] - Max water entities detected. Clearing...
execute as @e[name=dmain,type=marker,limit=1] if score @s _monster_ent > @s _monster_max if entity @e[name=dmain,scores={logMcaDebug=1..1}] run say [Alive] - Max monster entities detected. Clearing...
execute as @e[name=dmain,type=marker,limit=1] if score @s _nether_ent > @s _nether_max if entity @e[name=dmain,scores={logMcaDebug=1..1}] run say [Alive] - Max nether entities detected. Clearing...
execute as @e[name=dmain,type=marker,limit=1] if score @s _end_ent > @s _end_max if entity @e[name=dmain,scores={logMcaDebug=1..1}] run say [Alive] - Max end entities detected. Clearing...
execute as @e[name=dmain,type=marker,limit=1] if score @s mina_ent > @s mina_max if entity @e[name=dmain,scores={logMcaDebug=1..1}] run say [Alive] - Max Alive activity detected. Clearing pointers and working markers...

# Kill Entities
execute as @e[name=dmain,type=marker,limit=1] if score @s _background_ent > @s _background_max as @e[tag=_background,limit=20,tag=!nokill,tag=!playerfound,sort=random] run function world:lagcontrol/kill
execute as @e[name=dmain,type=marker,limit=1] if score @s _animal_ent > @s _animal_max as @e[tag=_animal,limit=20,tag=!nokill,sort=random] run function world:lagcontrol/kill
execute as @e[name=dmain,type=marker,limit=1] if score @s _water_ent > @s _water_max as @e[tag=_water,limit=20,tag=!nokill,sort=random] run function world:lagcontrol/kill
execute as @e[name=dmain,type=marker,limit=1] if score @s _monster_ent > @s _monster_max as @e[tag=_monster,limit=20,tag=!nokill,sort=random] run function world:lagcontrol/kill
execute as @e[name=dmain,type=marker,limit=1] if score @s _nether_ent > @s _nether_max as @e[tag=_nether,limit=20,tag=!nokill,sort=random] run function world:lagcontrol/kill
execute as @e[name=dmain,type=marker,limit=1] if score @s _end_ent > @s _end_max as @e[tag=_end,limit=20,tag=!nokill,sort=random] run function world:lagcontrol/kill
execute as @e[name=dmain,type=marker,limit=1] if score @s mina_ent > @s mina_max as @e[tag=mina,limit=20,tag=!nokill,sort=random] run function world:lagcontrol/kill

# Clear Waste
function world:lagcontrol/mobs/item
function world:lagcontrol/mobs/sawayig
function world:lagcontrol/mobs/vex

# Ticker
scoreboard players add @e[name=dmain] mobscrolltic 1
scoreboard players set @e[name=dmain,scores={mobscrolltic=53..}] mobscrolltic 0