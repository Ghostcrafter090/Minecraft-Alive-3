
execute at @s if block ~ ~-1 ~ #minecraft:ice run scoreboard players add @s slimeNegate 5
execute at @s if block ~ ~-1 ~ #minecraft:sand run scoreboard players add @s slimeNegate 8
execute at @s if block ~ ~-1 ~ #minecraft:sand run effect give @s slowness 1 0
execute at @s unless entity @s[nbt={Fire:-1s}] if entity @s[scores={slimeNegate=10..}] run scoreboard players add @s slimeNegate 1000
execute at @s unless entity @s[nbt={Fire:-1s}] if entity @s[scores={slimeNegate=10..}] run effect give @s resistance 5 5
execute at @s unless entity @s[nbt={Fire:-1s}] if entity @s[scores={slimeNegate=10..}] run summon creeper ~ ~ ~ {CustomNameVisible:0b,ExplosionRadius:1b,PersistenceRequired:1b,CanPickUpLoot:1b,Fuse:2,ignited:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1}],Attributes:[{Name:generic.max_health,Base:1}]}