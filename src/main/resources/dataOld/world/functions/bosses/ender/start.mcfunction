# Define
scoreboard objectives add kyacount dummy

# Main
scoreboard players add @s endt 1
execute if entity @e[name=dmain,type=marker,scores={kyacount=..20}] as @e[tag=!kyaeffect,sort=random,limit=1] run tag @s add kyaeffect
execute store result score @e[name=dmain,type=marker] kyacount if entity @e[tag=kyaeffect]

# Main Particles
execute as @e[tag=kya] at @s as @e[tag=kyaeffect] positioned ~1 ~1.65 ~-3 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=kya] at @s as @e[tag=kyaeffect] positioned ~-2 ~1.65 ~3 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=kya] at @s as @e[tag=kyaeffect] positioned ~1 ~1.65 ~3 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=kya] at @s as @e[tag=kyaeffect] positioned ~-2 ~1.65 ~-3 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=kya] at @s as @e[tag=kyaeffect] positioned ~2 ~1.65 ~-3 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=kya] at @s as @e[tag=kyaeffect] positioned ~-1 ~1.65 ~3 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=kya] at @s as @e[tag=kyaeffect] positioned ~2 ~1.65 ~3 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=kya] at @s as @e[tag=kyaeffect] positioned ~-1 ~1.65 ~-3 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a

execute as @e[tag=kya] at @s as @e[tag=kyaeffect] positioned ~-3 ~1.65 ~1 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=kya] at @s as @e[tag=kyaeffect] positioned ~3 ~1.65 ~-2 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=kya] at @s as @e[tag=kyaeffect] positioned ~3 ~1.65 ~1 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=kya] at @s as @e[tag=kyaeffect] positioned ~-3 ~1.65 ~-2 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=kya] at @s as @e[tag=kyaeffect] positioned ~-3 ~1.65 ~2 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=kya] at @s as @e[tag=kyaeffect] positioned ~3 ~1.65 ~-1 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=kya] at @s as @e[tag=kyaeffect] positioned ~3 ~1.65 ~2 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=kya] at @s as @e[tag=kyaeffect] positioned ~-3 ~1.65 ~-1 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a

# Lines
execute as @e[tag=kya] at @s positioned ~-3 ~1.65 ~-5 if block ~ ~ ~ red_candle unless entity @e[tag=line,tag=a] run summon marker ~ ~ ~ {Tags:['line','a']}
execute as @e[tag=kya] at @s positioned ~4 ~1.65 ~-5 if block ~ ~ ~ red_candle unless entity @e[tag=line,tag=b] run summon marker ~ ~ ~ {Tags:['line','b']}
execute as @e[tag=kya] at @s positioned ~-3 ~1.65 ~5 if block ~ ~ ~ red_candle unless entity @e[tag=line,tag=c] run summon marker ~ ~ ~ {Tags:['line','c']}
execute as @e[tag=kya] at @s positioned ~4 ~1.65 ~5 if block ~ ~ ~ red_candle unless entity @e[tag=line,tag=d] run summon marker ~ ~ ~ {Tags:['line','d']}
execute as @e[tag=kya] at @s positioned ~-4 ~1.65 ~-5 if block ~ ~ ~ red_candle unless entity @e[tag=line,tag=a] run summon marker ~ ~ ~ {Tags:['line','a']}
execute as @e[tag=kya] at @s positioned ~3 ~1.65 ~-5 if block ~ ~ ~ red_candle unless entity @e[tag=line,tag=b] run summon marker ~ ~ ~ {Tags:['line','b']}
execute as @e[tag=kya] at @s positioned ~-4 ~1.65 ~5 if block ~ ~ ~ red_candle unless entity @e[tag=line,tag=c] run summon marker ~ ~ ~ {Tags:['line','c']}
execute as @e[tag=kya] at @s positioned ~3 ~1.65 ~5 if block ~ ~ ~ red_candle unless entity @e[tag=line,tag=d] run summon marker ~ ~ ~ {Tags:['line','d']}

execute as @e[tag=kya] at @s positioned ~-5 ~1.65 ~-3 if block ~ ~ ~ red_candle unless entity @e[tag=line,tag=a] run summon marker ~ ~ ~ {Tags:['line','a']}
execute as @e[tag=kya] at @s positioned ~-5 ~1.65 ~4 if block ~ ~ ~ red_candle unless entity @e[tag=line,tag=b] run summon marker ~ ~ ~ {Tags:['line','b']}
execute as @e[tag=kya] at @s positioned ~5 ~1.65 ~-3 if block ~ ~ ~ red_candle unless entity @e[tag=line,tag=c] run summon marker ~ ~ ~ {Tags:['line','c']}
execute as @e[tag=kya] at @s positioned ~5 ~1.65 ~4 if block ~ ~ ~ red_candle unless entity @e[tag=line,tag=d] run summon marker ~ ~ ~ {Tags:['line','d']}
execute as @e[tag=kya] at @s positioned ~-5 ~1.65 ~-4 if block ~ ~ ~ red_candle unless entity @e[tag=line,tag=a] run summon marker ~ ~ ~ {Tags:['line','a']}
execute as @e[tag=kya] at @s positioned ~-5 ~1.65 ~3 if block ~ ~ ~ red_candle unless entity @e[tag=line,tag=b] run summon marker ~ ~ ~ {Tags:['line','b']}
execute as @e[tag=kya] at @s positioned ~5 ~1.65 ~-4 if block ~ ~ ~ red_candle unless entity @e[tag=line,tag=c] run summon marker ~ ~ ~ {Tags:['line','c']}
execute as @e[tag=kya] at @s positioned ~5 ~1.65 ~3 if block ~ ~ ~ red_candle unless entity @e[tag=line,tag=d] run summon marker ~ ~ ~ {Tags:['line','d']}

# Effect Lines
execute as @e[tag=kya] at @s positioned ~1 ~1.65 ~-3 if block ~ ~ ~ purple_candle unless entity @e[tag=effectline,tag=a] run summon marker ~ ~ ~ {Tags:['effectline','a']}
execute as @e[tag=kya] at @s positioned ~-2 ~1.65 ~3 if block ~ ~ ~ purple_candle unless entity @e[tag=effectline,tag=b] run summon marker ~ ~ ~ {Tags:['effectline','b']}
execute as @e[tag=kya] at @s positioned ~1 ~1.65 ~3 if block ~ ~ ~ purple_candle unless entity @e[tag=effectline,tag=c] run summon marker ~ ~ ~ {Tags:['effectline','c']}
execute as @e[tag=kya] at @s positioned ~-2 ~1.65 ~-3 if block ~ ~ ~ purple_candle unless entity @e[tag=effectline,tag=d] run summon marker ~ ~ ~ {Tags:['effectline','d']}
execute as @e[tag=kya] at @s positioned ~2 ~1.65 ~-3 if block ~ ~ ~ purple_candle unless entity @e[tag=effectline,tag=a] run summon marker ~ ~ ~ {Tags:['effectline','a']}
execute as @e[tag=kya] at @s positioned ~-1 ~1.65 ~3 if block ~ ~ ~ purple_candle unless entity @e[tag=effectline,tag=b] run summon marker ~ ~ ~ {Tags:['effectline','b']}
execute as @e[tag=kya] at @s positioned ~2 ~1.65 ~3 if block ~ ~ ~ purple_candle unless entity @e[tag=effectline,tag=c] run summon marker ~ ~ ~ {Tags:['effectline','c']}
execute as @e[tag=kya] at @s positioned ~-1 ~1.65 ~-3 if block ~ ~ ~ purple_candle unless entity @e[tag=effectline,tag=d] run summon marker ~ ~ ~ {Tags:['effectline','d']}

execute as @e[tag=kya] at @s positioned ~-3 ~1.65 ~1 if block ~ ~ ~ purple_candle unless entity @e[tag=effectline,tag=a] run summon marker ~ ~ ~ {Tags:['effectline','a']}
execute as @e[tag=kya] at @s positioned ~3 ~1.65 ~-2 if block ~ ~ ~ purple_candle unless entity @e[tag=effectline,tag=b] run summon marker ~ ~ ~ {Tags:['effectline','b']}
execute as @e[tag=kya] at @s positioned ~3 ~1.65 ~1 if block ~ ~ ~ purple_candle unless entity @e[tag=effectline,tag=c] run summon marker ~ ~ ~ {Tags:['effectline','c']}
execute as @e[tag=kya] at @s positioned ~-3 ~1.65 ~-2 if block ~ ~ ~ purple_candle unless entity @e[tag=effectline,tag=d] run summon marker ~ ~ ~ {Tags:['effectline','d']}
execute as @e[tag=kya] at @s positioned ~-3 ~1.65 ~2 if block ~ ~ ~ purple_candle unless entity @e[tag=effectline,tag=a] run summon marker ~ ~ ~ {Tags:['effectline','a']}
execute as @e[tag=kya] at @s positioned ~3 ~1.65 ~-1 if block ~ ~ ~ purple_candle unless entity @e[tag=effectline,tag=b] run summon marker ~ ~ ~ {Tags:['effectline','b']}
execute as @e[tag=kya] at @s positioned ~3 ~1.65 ~2 if block ~ ~ ~ purple_candle unless entity @e[tag=effectline,tag=c] run summon marker ~ ~ ~ {Tags:['effectline','c']}
execute as @e[tag=kya] at @s positioned ~-3 ~1.65 ~-1 if block ~ ~ ~ purple_candle unless entity @e[tag=effectline,tag=d] run summon marker ~ ~ ~ {Tags:['effectline','d']}

# Line Particles
execute as @e[tag=line] at @s run particle minecraft:portal ~ ~ ~ 0 0 0 0 10 force
execute as @e[tag=effectline] at @s run particle minecraft:glow ~ ~ ~ 0 0 0 0.0 10 force

# Line AI
execute as @e[tag=line] at @s facing entity @e[tag=kya] eyes run tp @s ^ ^ ^0.01 ~ ~
execute as @e[tag=line] at @s facing entity @e[tag=kya] eyes if entity @e[name=dmain,type=marker,scores={atic=10..10}] run playsound minecraft:ambient.warped_forest.additions master @a ~ ~ ~ 1 0.1
execute as @e[tag=line] at @s facing entity @e[tag=kya] eyes if entity @e[name=dmain,type=marker,scores={atic=10..10}] run playsound minecraft:ambient.nether_wastes.additions master @a ~ ~ ~ 1 0.1
execute as @e[tag=line] at @s as @e[tag=effectline,distance=0..1] run tp @s ~ ~ ~ ~ ~
execute if entity @e[name=dmain,type=marker,scores={atic=15..15}] as @e[tag=line] at @s as @e[tag=effectline,distance=0..1] run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 1 0.1
execute as @e[tag=line] at @s if entity @e[tag=kya,distance=0..1] facing entity @e[tag=defunct_end_key,limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.02 ~ ~

# End Start
execute as @e[tag=defunct_end_key] at @s if entity @e[tag=line,tag=a,distance=0..0.5] if entity @e[tag=line,tag=b,distance=0..0.5] if entity @e[tag=line,tag=c,distance=0..0.5] if entity @e[tag=line,tag=d,distance=0..0.5] run scoreboard players add @s enderStartTic 1
execute as @e[tag=defunct_end_key] at @s if entity @e[tag=line,tag=a,distance=0..0.5] if entity @e[tag=line,tag=b,distance=0..0.5] if entity @e[tag=line,tag=c,distance=0..0.5] if entity @e[tag=line,tag=d,distance=0..0.5] if entity @s[scores={enderStartTic=0..10}] run playsound minecraft:entity.enderman.stare master @a ~ ~ ~ 25 0.1
execute as @e[tag=defunct_end_key] at @s if entity @e[tag=line,tag=a,distance=0..0.5] if entity @e[tag=line,tag=b,distance=0..0.5] if entity @e[tag=line,tag=c,distance=0..0.5] if entity @e[tag=line,tag=d,distance=0..0.5] as @e[tag=effectend] run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force
execute as @e[tag=defunct_end_key] at @s as @e[tag=!effectend,limit=1,sort=random] if entity @e[tag=line,tag=a,distance=0..0.5] if entity @e[tag=line,tag=b,distance=0..0.5] if entity @e[tag=line,tag=c,distance=0..0.5] if entity @e[tag=line,tag=d,distance=0..0.5] run tag @s add effectend
execute as @e[tag=defunct_end_key] at @s if entity @e[tag=line,tag=a,distance=0..0.5] if entity @e[tag=line,tag=b,distance=0..0.5] if entity @e[tag=line,tag=c,distance=0..0.5] if entity @e[tag=line,tag=d,distance=0..0.5] run particle minecraft:dripping_obsidian_tear ~ ~ ~ 0 20 0 0 500 force
execute as @e[tag=defunct_end_key] at @s if entity @e[tag=line,tag=a,distance=0..0.5] if entity @e[tag=line,tag=b,distance=0..0.5] if entity @e[tag=line,tag=c,distance=0..0.5] if entity @e[tag=line,tag=d,distance=0..0.5] if entity @e[name=dmain,type=marker,scores={atic=1..1}] run summon lightning_bolt ~ ~-40 ~
execute as @e[tag=defunct_end_key] at @s if entity @e[tag=line,tag=a,distance=0..0.5] if entity @e[tag=line,tag=b,distance=0..0.5] if entity @e[tag=line,tag=c,distance=0..0.5] if entity @e[tag=line,tag=d,distance=0..0.5] run particle minecraft:enchant ~ ~ ~ 1 10 1 0.1 10 force
execute as @e[tag=defunct_end_key] at @s if entity @e[tag=line,tag=a,distance=0..0.5] if entity @e[tag=line,tag=b,distance=0..0.5] if entity @e[tag=line,tag=c,distance=0..0.5] if entity @e[tag=line,tag=d,distance=0..0.5] run particle minecraft:portal ~ ~ ~ 1 10 1 0.1 10 force

# End
execute unless entity @e[tag=!effectend] as @e[type=item,tag=defunct_end_key] at @s run stopsound @a
execute unless entity @e[tag=!effectend] as @e[type=item,tag=defunct_end_key] at @s run scoreboard players set @e[name=dmain,type=marker] enderBool 1
execute unless entity @e[tag=!effectend] as @e[type=item,tag=defunct_end_key] at @s run summon marker ~ ~ ~ {Tags:["ender_key_spawn","effectend"]}
execute unless entity @e[tag=!effectend] as @e[type=item,tag=defunct_end_key] at @s run summon marker ~ ~ ~ {Tags:["ender_key_spawn_site","effectend"]}
execute unless entity @e[tag=!effectend] as @e[type=item,tag=defunct_end_key] at @s run summon wither ~ 500 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["magMark","effectend"],CustomName:'{"text":"End Key Spawn Site"}'}
execute unless entity @e[tag=!effectend] as @e[type=item,tag=defunct_end_key] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 1 1000
execute unless entity @e[tag=!effectend] as @e[type=item,tag=defunct_end_key] at @s run particle minecraft:electric_spark ~ ~ ~ 0 0 0 10 1000
execute unless entity @e[tag=!effectend] as @e[type=item,tag=defunct_end_key] at @s run particle minecraft:glow ~ ~ ~ 0 0 0 1 1000
execute unless entity @e[tag=!effectend] as @e[type=item,tag=defunct_end_key] at @s run particle minecraft:portal ~ ~ ~ 1 1 1 1 100
execute unless entity @e[tag=!effectend] as @e[type=item,tag=defunct_end_key] at @s run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 9 0.1
execute unless entity @e[tag=!effectend] as @e[type=item,tag=defunct_end_key] at @s run playsound minecraft:block.conduit.activate master @a ~ ~ ~ 9 0.1
execute unless entity @e[tag=!effectend] as @e[type=item,tag=defunct_end_key] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 9 0.1
execute unless entity @e[tag=!effectend] as @e[type=item,tag=defunct_end_key] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 9 2
execute unless entity @e[tag=!effectend] as @e[type=item,tag=defunct_end_key] at @s run playsound minecraft:ambient.cave master @a ~ ~ ~ 9 0.1
execute unless entity @e[tag=!effectend] as @e[type=item,tag=defunct_end_key] at @s run playsound minecraft:entity.enderman.stare master @a ~ ~ ~ 9 0.1
execute unless entity @e[tag=!effectend] as @e[type=item,tag=defunct_end_key] at @s run scoreboard players set @p endKeySpawn 1
execute unless entity @e[tag=!effectend] as @e[type=item,tag=defunct_end_key] at @s run summon creeper ~ ~ ~ {ExplosionRadius:30b,Fuse:1,ignited:1b}
execute unless entity @e[tag=!effectend] run kill @e[type=item]
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] run scoreboard players set @e[name=dmain,type=marker] enderBool 1
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] as @e[type=item,tag=defunct_end_key] at @s run summon marker ~ ~ ~ {Tags:["ender_key_spawn","effectend"]}
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] as @e[type=item,tag=defunct_end_key] at @s run summon marker ~ ~ ~ {Tags:["ender_key_spawn_site","effectend"]}
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] as @e[type=item,tag=defunct_end_key] at @s run summon wither ~ 500 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["magMark","effectend"],CustomName:'{"text":"End Key Spawn Site"}'}
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] as @e[type=item,tag=defunct_end_key] at @s run stopsound @a
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] as @e[type=item,tag=defunct_end_key] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 1 1000
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] as @e[type=item,tag=defunct_end_key] at @s run particle minecraft:electric_spark ~ ~ ~ 0 0 0 10 1000
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] as @e[type=item,tag=defunct_end_key] at @s run particle minecraft:glow ~ ~ ~ 0 0 0 1 1000
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] as @e[type=item,tag=defunct_end_key] at @s run particle minecraft:portal ~ ~ ~ 1 1 1 1 100
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] as @e[type=item,tag=defunct_end_key] at @s run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 9 0.1
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] as @e[type=item,tag=defunct_end_key] at @s run playsound minecraft:block.conduit.activate master @a ~ ~ ~ 9 0.1
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] as @e[type=item,tag=defunct_end_key] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 9 0.1
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] as @e[type=item,tag=defunct_end_key] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 9 2
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] as @e[type=item,tag=defunct_end_key] at @s run playsound minecraft:ambient.cave master @a ~ ~ ~ 9 0.1
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] as @e[type=item,tag=defunct_end_key] at @s run scoreboard players set @p endKeySpawn 1
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] as @e[type=item,tag=defunct_end_key] at @s run playsound minecraft:entity.enderman.stare master @a ~ ~ ~ 9 0.1
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] as @e[type=item,tag=defunct_end_key] at @s run summon creeper ~ ~ ~ {ExplosionRadius:30b,Fuse:1,ignited:1b}
execute if entity @e[type=item,tag=defunct_end_key,scores={enderStartTic=1000..}] run kill @e[type=item]

# Effects
function world:bosses/ender/effects

# Active Check
scoreboard players set @e[name=dmain,type=marker] endStartActive 1