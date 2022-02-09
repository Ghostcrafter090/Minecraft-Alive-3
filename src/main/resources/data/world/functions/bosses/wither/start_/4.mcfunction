
scoreboard players set @e[name=dmain,type=marker] witherBool 1
execute as @e[type=item,tag=fire_key_shard] at @s run summon marker ~ ~ ~ {Tags:["fire_key_spawn","effectwither"]}
execute as @e[type=item,tag=fire_key_shard] at @s run summon marker ~ ~ ~ {Tags:["fire_key_spawn_site","effectwither"]}
execute as @e[type=item,tag=fire_key_shard] at @s run summon wither ~ 500 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["magMark","effectwither"],CustomName:'{"text":"Fire Key Spawn Site"}'}
execute as @e[type=item,tag=fire_key_shard] at @s run stopsound @a
execute as @e[type=item,tag=fire_key_shard] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 1 1000
execute as @e[type=item,tag=fire_key_shard] at @s run particle minecraft:electric_spark ~ ~ ~ 0 0 0 10 1000
execute as @e[type=item,tag=fire_key_shard] at @s run particle minecraft:glow ~ ~ ~ 0 0 0 1 1000
execute as @e[type=item,tag=fire_key_shard] at @s run particle minecraft:portal ~ ~ ~ 1 1 1 1 100
execute as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 9 0.1
execute as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:block.conduit.activate master @a ~ ~ ~ 9 0.1
execute as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 9 0.1
execute as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 9 2
execute as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:ambient.cave master @a ~ ~ ~ 9 0.1
execute as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:entity.enderman.stare master @a ~ ~ ~ 9 0.1
execute as @e[type=item,tag=fire_key_shard] at @s run scoreboard players set @p fireKeySpawned 1
execute as @e[type=item,tag=fire_key_shard] at @s run summon fireball ~ ~ ~ {ExplosionPower:30b,power:[0.0,-1.0,0.0]}
kill @e[type=item]