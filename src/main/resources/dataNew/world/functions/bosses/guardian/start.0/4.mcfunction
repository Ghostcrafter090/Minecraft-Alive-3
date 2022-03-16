


















scoreboard players set @e[tag=!notick,tag=dmain,type=marker] guardBool 1
execute as @e[tag=!notick,type=item,tag=water_key_shard] at @s run summon marker ~ ~ ~ {Tags:["water_key_spawn","effectguard"]}
execute as @e[tag=!notick,type=item,tag=water_key_shard] at @s run summon marker ~ ~ ~ {Tags:["water_key_spawn_site","effectguard"]}
execute as @e[tag=!notick,type=item,tag=water_key_shard] at @s run summon wither ~ 500 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["magMark","effectguard"],CustomName:'{"text":"Water Key Spawn Site"}'}
execute as @e[tag=!notick,type=item,tag=water_key_shard] at @s run stopsound @a
execute as @e[tag=!notick,type=item,tag=water_key_shard] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 1 1000
execute as @e[tag=!notick,type=item,tag=water_key_shard] at @s run particle minecraft:electric_spark ~ ~ ~ 0 0 0 10 1000
execute as @e[tag=!notick,type=item,tag=water_key_shard] at @s run particle minecraft:glow ~ ~ ~ 0 0 0 1 1000
execute as @e[tag=!notick,type=item,tag=water_key_shard] at @s run particle minecraft:portal ~ ~ ~ 1 1 1 1 100
execute as @e[tag=!notick,type=item,tag=water_key_shard] at @s run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 9 0.1
execute as @e[tag=!notick,type=item,tag=water_key_shard] at @s run playsound minecraft:block.conduit.activate master @a ~ ~ ~ 9 0.1
execute as @e[tag=!notick,type=item,tag=water_key_shard] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 9 0.1
execute as @e[tag=!notick,type=item,tag=water_key_shard] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 9 2
execute as @e[tag=!notick,type=item,tag=water_key_shard] at @s run playsound minecraft:ambient.cave master @a ~ ~ ~ 9 0.1
execute as @e[tag=!notick,type=item,tag=water_key_shard] at @s run scoreboard players set @p waterKeySpawned 1
execute as @e[tag=!notick,type=item,tag=water_key_shard] at @s run playsound minecraft:entity.enderman.stare master @a ~ ~ ~ 9 0.1
execute as @e[tag=!notick,type=item,tag=water_key_shard] at @s run summon creeper ~ ~ ~ {ExplosionRadius:30b,Fuse:1,ignited:1b}
kill @e[tag=!notick,type=item]