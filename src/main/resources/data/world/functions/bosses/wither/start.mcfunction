execute as @e[type=item,tag=fire_key_shard] at @s run particle minecraft:dripping_obsidian_tear ~ ~ ~ 0 20 0 0 500 force
execute as @e[type=item,tag=fire_key_shard] at @s if entity @e[name=dmain,type=marker,scores={atic=1..1}] run summon lightning_bolt ~ ~-40 ~
execute as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:ambient.underwater.loop.additions.ultra_rare master @a ~ ~ ~ 20 1.5
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=100..}] as @e[limit=2,sort=random,tag=!effectwither] run tag @s add effectwither
execute as @e[type=item,tag=fire_key_shard,scores={witherStartTic=100..}] as @e[tag=effectwither] run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force
execute unless entity @e[tag=!effectwither] run scoreboard players set @e[name=dmain,type=marker] witherBool 1
execute unless entity @e[tag=!effectwither] as @e[type=item,tag=fire_key_shard] at @s run stopsound @a
execute unless entity @e[tag=!effectwither] as @e[type=item,tag=fire_key_shard] at @s run summon marker ~ ~ ~ {Tags:["fire_key_spawn","effectwither"]}
execute unless entity @e[tag=!effectwither] as @e[type=item,tag=fire_key_shard] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 1 1000
execute unless entity @e[tag=!effectwither] as @e[type=item,tag=fire_key_shard] at @s run particle minecraft:electric_spark ~ ~ ~ 0 0 0 10 1000
execute unless entity @e[tag=!effectwither] as @e[type=item,tag=fire_key_shard] at @s run particle minecraft:glow ~ ~ ~ 0 0 0 1 1000
execute unless entity @e[tag=!effectwither] as @e[type=item,tag=fire_key_shard] at @s run particle minecraft:portal ~ ~ ~ 1 1 1 1 100
execute unless entity @e[tag=!effectwither] as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 9 0.1
execute unless entity @e[tag=!effectwither] as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:block.conduit.activate master @a ~ ~ ~ 9 0.1
execute unless entity @e[tag=!effectwither] as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 9 0.1
execute unless entity @e[tag=!effectwither] as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 9 2
execute unless entity @e[tag=!effectwither] as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:ambient.cave master @a ~ ~ ~ 9 0.1
execute unless entity @e[tag=!effectwither] as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:entity.enderman.stare master @a ~ ~ ~ 9 0.1
execute unless entity @e[tag=!effectwither] as @e[type=item,tag=fire_key_shard] at @s run summon creeper ~ ~ ~ {ExplosionRadius:30b,Fuse:1,ignited:1b}
execute unless entity @e[tag=!effectwither] run kill @e[type=item]
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=1000..}] run scoreboard players set @e[name=dmain,type=marker] witherBool 1
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=1000..}] as @e[type=item,tag=fire_key_shard] at @s run summon marker ~ ~ ~ {Tags:["fire_key_spawn","effectwither"]}
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=1000..}] as @e[type=item,tag=fire_key_shard] at @s run summon marker ~ ~ ~ {Tags:["fire_key_spawn_site","effectwither"]}
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=1000..}] as @e[type=item,tag=fire_key_shard] at @s run summon wither ~ 500 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["magMark","effectwither"],CustomName:'{"text":"Water Key Spawn Site"}'}
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=1000..}] as @e[type=item,tag=fire_key_shard] at @s run stopsound @a
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=1000..}] as @e[type=item,tag=fire_key_shard] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 1 1000
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=1000..}] as @e[type=item,tag=fire_key_shard] at @s run particle minecraft:electric_spark ~ ~ ~ 0 0 0 10 1000
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=1000..}] as @e[type=item,tag=fire_key_shard] at @s run particle minecraft:glow ~ ~ ~ 0 0 0 1 1000
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=1000..}] as @e[type=item,tag=fire_key_shard] at @s run particle minecraft:portal ~ ~ ~ 1 1 1 1 100
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=1000..}] as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 9 0.1
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=1000..}] as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:block.conduit.activate master @a ~ ~ ~ 9 0.1
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=1000..}] as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 9 0.1
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=1000..}] as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 9 2
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=1000..}] as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:ambient.cave master @a ~ ~ ~ 9 0.1
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=1000..}] as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:entity.enderman.stare master @a ~ ~ ~ 9 0.1
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=1000..}] as @e[type=item,tag=fire_key_shard] at @s run summon creeper ~ ~ ~ {ExplosionRadius:30b,Fuse:1,ignited:1b}
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=1000..}] run kill @e[type=item]