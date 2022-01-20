# With_withers will invulnerable up untill a water key is held within 100 blocks of the With wither
#
# items required for the key:
# 
# Blaze Rod
# Totem of undying
# Fire Key Shard
# Wither Rose

# Define
scoreboard objectives add witherStartTic dummy
scoreboard objectives add witherBool dummy
scoreboard objectives add witherCount dummy
scoreboard objectives add withWitherKill minecraft.killed:minecraft.wither
scoreboard objectives add playerWithKills dummy
scoreboard objectives add portalDeath dummy
scoreboard objectives add withEffActive dummy

# Main
scoreboard players set @e[name=dmain,type=marker] withEffActive 0
execute as @e[type=item,tag=fire_key_shard] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] run particle minecraft:flame ~ ~ ~ 1 1 1 0 10 force
execute as @e[type=item,tag=fire_key_shard] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:wither_rose",Count:1b}}] run particle minecraft:large_smoke ~ ~ ~ 1 10 1 0.1 10 force
execute as @e[type=item,tag=fire_key_shard] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:totem_of_undying",Count:1b}}] run particle minecraft:enchant ~ ~ ~ 1 10 1 0.1 10 force
execute as @e[type=item,tag=fire_key_shard] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] run particle minecraft:reverse_portal ~ ~ ~ 1 10 1 0.1 10 force
execute as @e[type=item,tag=fire_key_shard] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"mca:water_key",Count:1b}}] run particle minecraft:bubble ~ ~ ~ 1 1 1 0 10 force
execute as @e[type=item,tag=fire_key_shard] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"mca:water_key",Count:1b}}] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:totem_of_undying",Count:1b}}] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:wither_rose",Count:1b}}] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] run scoreboard players add @s witherStartTic 1
execute as @e[type=item,tag=fire_key_shard,scores={witherStartTic=1..}] at @s run function world:bosses/wither/start
execute as @e[type=item,tag=fire_key_shard,scores={witherStartTic=1..}] run function world:bosses/wither/effects
execute if entity @e[name=dmain,scores={witherBool=1..1}] run function world:bosses/wither/effects
execute as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:ambient.crimson_forest.additions master @a ~ ~ ~ 0.1 1.5
execute as @e[type=item,tag=fire_key_shard] at @s run particle minecraft:crimson_spore ~ ~ ~ 0 0 0 1 10
tag @e[type=item,tag=fire_key_shard,distance=0..5] add dimensional
execute if entity @e[name=dmain,type=marker,scores={witherBool=1..1}]
scoreboard players add @e[tag=fire_key_spawn,type=marker] timeAlive 1
execute as @e[tag=fire_key_spawn,type=marker,scores={timeAlive=10..}] at @s run summon item ~ ~ ~ {Item:{id:"mca:fire_key",Count:1b},Tags:['dimensional','fire_key'],Health:32786}
execute as @e[type=item,tag=fire_key] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace fire
execute as @e[tag=fire_key_spawn,type=marker,scores={timeAlive=10..}] at @s run kill @s

# Spawn Site Effects
execute as @e[tag=fire_key_spawn_site] at @s run playsound minecraft:ambient.crimson_forest.additions master @a ~ ~ ~ 0.1 1.5
execute as @e[tag=fire_key_spawn_site] at @s run particle minecraft:crimson_spore ~ ~ ~ 10 10 10 1 200

# Portal Destory Effects
execute as @e[tag=portal,type=marker,tag=finished] at @s unless block ~ ~2 ~ nether_portal run scoreboard players add @s portalDeath 3
execute as @e[tag=portal,type=marker,tag=finished,scores={portalDeath=1..}] run scoreboard players remove @s 1
execute if entity @e[tag=portal,type=marker,tag=finished,scores={portalDeath=1..}] run tag @e[limit=1,sort=random,tag=!portalDeath] add portalDeath
execute as @e[tag=portal,type=marker,tag=finished,scores={portalDeath=1..}] at @s run particle minecraft:dragon_breath ~ ~3 ~ 1 1 1 1 1 force
execute as @e[tag=portal,type=marker,tag=finished,scores={portalDeath=600..}] at @s positioned ~ ~3 ~ run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 blackstone replace obsidian
execute as @e[tag=portal,type=marker,tag=finished,scores={portalDeath=600..}] at @s positioned ~ ~3 ~ run summon fireball ~ ~ ~ {ExplosionPower:3b,power:[0.0,1.0,0.0]}
execute as @e[tag=portal,type=marker,tag=finished,scores={portalDeath=600..}] at @s unless block ~ ~2 ~ nether_portal run kill @s
execute unless entity @e[tag=portal,type=marker,tag=finished,scores={portalDeath=1..}] as @e[tag=portalDeath,limit=1,sort=random] run tag @s remove portalDeath

# Uninvuln
execute as @e[type=wither,tag=!vuln,tag=!With] run data modify entity @s Invulnerable set value 1b
execute as @e[type=wither,tag=!vuln,tag=!With] run tag @s add With
execute as @e[type=wither,tag=vuln,tag=!vulnN] run data modify entity @s Invulnerable set value 0b
execute as @e[type=wither,tag=vuln,tag=!vulnN] run tag @s add vulnN

# Key
execute as @a[nbt={SelectedItem:{id:"mca:fire_key"}}] at @s as @e[type=wither,distance=0..50,tag=!vuln] run summon lightning_bolt ~ ~-40 ~
execute as @a[nbt={SelectedItem:{id:"mca:fire_key"}}] at @s as @e[type=wither,distance=0..50,tag=!vuln] run scoreboard players add @e[type=marker,name=dmain] witherCount 1
execute as @a[nbt={SelectedItem:{id:"mca:fire_key"}}] at @s as @e[type=wither,distance=0..50,tag=!vuln] run tag @s add vuln

# Player Kill Count
scoreboard players set @e[name=dmain,type=marker] playerWithKills 0
execute as @a run scoreboard players operation @e[name=dmain,type=marker] playerWithKills += @a withWitherKill

# Boss Finish
execute as @e[name=dmain,type=marker] if entity @s[scores={playerWithKills=1..}] run give @r mca:defunct_end_key 1
execute as @e[name=dmain,type=marker] if entity @s[scores={playerWithKills=1..}] run function world:bosses/wither/reset

# withers
execute as @e[type=wither] at @s unless entity @e[type=wither,distance=0..200] run effect give @s wither 10 0

# Wither Effects Check
execute unless entity @e[name=dmain,type=marker,scores={withEffActive=1..1}] as @e[tag=portal,type=marker,tag=finished] run scoreboard players add @s portalDeath 3
execute unless entity @e[tag=portal,type=marker,tag=finished] as @e[type=piglin,limit=1,sort=random] run data modify entity @s IsImmuneToZombification set value 0b
