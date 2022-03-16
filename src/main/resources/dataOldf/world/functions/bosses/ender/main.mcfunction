# Define
scoreboard objectives add disableEnd dummy
scoreboard objectives add jTempleDistance dummy
scoreboard objectives add enderBool dummy
scoreboard objectives add endt dummy
scoreboard objectives add endStartActive dummy
scoreboard objectives add enderStartTic dummy

# Main
function world:bosses/ender/findtemple
execute as @e[name=dmain,type=marker] unless entity @s[scores={disableEnd=0..1}] run scoreboard players set @s disableEnd 1
execute if entity @e[name=dmain,type=marker,scores={disableEnd=1..1}] run function world:bosses/ender/disableend

# Start
scoreboard players set @e[name=dmain,type=marker] endStartActive 0
execute as @e[tag=kya] at @s if block ~1 ~1.65 ~-3 purple_candle[lit=true] if block ~-2 ~1.65 ~3 purple_candle[lit=true] if block ~1 ~1.65 ~3 purple_candle[lit=true] if block ~-2 ~1.65 ~-3 purple_candle[lit=true] if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~-4 ~1.65 ~-5 red_candle[lit=true] if block ~3 ~1.65 ~-5 red_candle[lit=true] if block ~-4 ~1.65 ~5 red_candle[lit=true] if block ~3 ~1.65 ~5 red_candle[lit=true] if entity @e[tag=fire_key,distance=0..1] positioned ~-1 ~ ~ if entity @e[tag=defunct_end_key,distance=0..1] run function world:bosses/ender/start
execute as @e[tag=kya] at @s if block ~2 ~1.65 ~-3 purple_candle[lit=true] if block ~-1 ~1.65 ~3 purple_candle[lit=true] if block ~2 ~1.65 ~3 purple_candle[lit=true] if block ~-1 ~1.65 ~-3 purple_candle[lit=true] if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~-3 ~1.65 ~-5 red_candle[lit=true] if block ~4 ~1.65 ~-5 red_candle[lit=true] if block ~-3 ~1.65 ~5 red_candle[lit=true] if block ~4 ~1.65 ~5 red_candle[lit=true] if entity @e[tag=fire_key,distance=0..1] positioned ~1 ~ ~ if entity @e[tag=defunct_end_key,distance=0..1] run function world:bosses/ender/start 
execute as @e[tag=kya] at @s if block ~3 ~1.65 ~-1 purple_candle[lit=true] if block ~-3 ~1.65 ~-1 purple_candle[lit=true] if block ~3 ~1.65 ~2 purple_candle[lit=true] if block ~-3 ~1.65 ~2 purple_candle[lit=true] if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~5 ~1.65 ~-3 red_candle[lit=true] if block ~-5 ~1.65 ~-3 red_candle[lit=true] if block ~5 ~1.65 ~4 red_candle[lit=true] if block ~-5 ~1.65 ~4 red_candle[lit=true] if entity @e[tag=fire_key,distance=0..1] positioned ~ ~ ~1 if entity @e[tag=defunct_end_key,distance=0..1] run function world:bosses/ender/start
execute as @e[tag=kya] at @s if block ~3 ~1.65 ~1 purple_candle[lit=true] if block ~3 ~1.65 ~-2 purple_candle[lit=true] if block ~3 ~1.65 ~1 purple_candle[lit=true] if block ~-3 ~1.65 ~-2 purple_candle[lit=true] if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~-5 ~1.65 ~-4 red_candle[lit=true] if block ~-5 ~1.65 ~3 red_candle[lit=true] if block ~5 ~1.65 ~-4 red_candle[lit=true] if block ~5 ~1.65 ~3 red_candle[lit=true] if entity @e[tag=fire_key,distance=0..1] positioned ~ ~ ~-1 if entity @e[tag=defunct_end_key,distance=0..1] run function world:bosses/ender/start
execute unless entity @e[name=dmain,type=marker,scores={endStartActive=1..1}] run kill @e[tag=line]
execute unless entity @e[name=dmain,type=marker,scores={endStartActive=1..1}] run kill @e[tag=effectline]
scoreboard players add @e[tag=ender_key_spawn,type=marker] timeAlive 1
execute as @e[tag=ender_key_spawn,type=marker,scores={timeAlive=10..10}] at @s run summon item ~ ~ ~ {Item:{id:"mca:end_key",Count:1b},Tags:['dimensional']}

# Effects
execute if entity @e[name=dmain,type=marker,scores={enderBool=1..1}] run function world:bosses/ender/effects

# Reset
execute as @e[type=ender_dragon,nbt={DragonPhase:9},tag=!music] as @a at @s run playsound music_disc.blocks master @s ~ ~ ~ 20
execute as @e[type=ender_dragon,nbt={DragonPhase:9},tag=!music] run tag @s add music
execute if entity @e[name=dmain,type=marker,scores={enderBool=1..1}] if entity @a[advancements={minecraft:end/kill_dragon=true}] run function world:bosses/ender/reset
execute unless entity @e[name=dmain,type=marker,scores={enderBool=1..1}] unless entity @e[name=dmain,type=marker,scores={disableEnd=1..1}] run effect give @e[type=phantom] wither 10 1