# elder_guardians will invulnerable up untill a water key is held within 100 blocks of the elder guardian
#
# items required for the key:
# 
# Heart of the sea
# Totem of undying
# Water Key Shard
# Prismarine Shard

# Define
scoreboard objectives add guardStartTic dummy
scoreboard objectives add guardBool dummy
scoreboard objectives add guardianCount dummy
scoreboard objectives add elderGuardKill minecraft.killed:minecraft.elder_guardian
scoreboard objectives add playerElderKills dummy

# Main
execute as @e[type=item,tag=water_key_shard] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] run particle minecraft:bubble ~ ~ ~ 1 1 1 0 10 force
execute as @e[type=item,tag=water_key_shard] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:nautilus_shell",Count:1b}}] run particle minecraft:falling_dripstone_water ~ ~ ~ 1 10 1 0.1 10 force
execute as @e[type=item,tag=water_key_shard] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:totem_of_undying",Count:1b}}] run particle minecraft:enchant ~ ~ ~ 1 10 1 0.1 10 force
execute as @e[type=item,tag=water_key_shard] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:heart_of_the_sea",Count:1b}}] run particle minecraft:dolphin ~ ~ ~ 1 10 1 0.1 10 force
execute as @e[type=item,tag=water_key_shard] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:totem_of_undying",Count:1b}}] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:heart_of_the_sea",Count:1b}}] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:nautilus_shell",Count:1b}}] run scoreboard players add @s guardStartTic 1
execute as @e[type=item,tag=water_key_shard,scores={guardStartTic=1..}] at @s run function world:bosses/guardian/start
execute as @e[type=item,tag=water_key_shard,scores={guardStartTic=1..}] run function world:bosses/guardian/effects
execute if entity @e[name=dmain,type=marker,scores={guardBool=1..1}] run function world:bosses/guardian/effects
execute as @e[type=item,tag=water_key_shard] at @s run playsound minecraft:ambient.underwater.loop.additions.ultra_rare master @a ~ ~ ~ 0.1 1.5
execute as @e[type=item,tag=water_key_shard] at @s run particle minecraft:warped_spore ~ ~ ~ 0 0 0 1 10
tag @e[type=item,tag=water_key_shard,distance=0..5] add dimensional
execute if entity @e[name=dmain,type=marker,scores={guardBool=1..1}]
scoreboard players add @e[tag=water_key_spawn,type=marker] timeAlive 1
execute as @e[tag=water_key_spawn,type=marker,scores={timeAlive=10..}] at @s run summon item ~ ~ ~ {Item:{id:"mca:water_key",Count:1b},Tags:['dimensional']}
execute as @e[tag=water_key_spawn,type=marker,scores={timeAlive=10..}] at @s run kill @s

# Spawn Site Effects
execute as @e[tag=water_key_spawn_site] at @s run playsound minecraft:ambient.underwater.loop.additions.ultra_rare master @a ~ ~ ~ 0.1 1.5
execute as @e[tag=water_key_spawn_site] at @s run particle minecraft:warped_spore ~ ~ ~ 10 10 10 1 100

# Uninvuln
execute as @e[type=elder_guardian,tag=!vuln,tag=!elder] run data modify entity @s Invulnerable set value 1b
execute as @e[type=elder_guardian,tag=!vuln,tag=!elder] run tag @s add elder
execute as @e[type=elder_guardian,tag=vuln,tag=!vulnN] run data modify entity @s Invulnerable set value 0b
execute as @e[type=elder_guardian,tag=vuln,tag=!vulnN] run tag @s add vulnN

# Key
execute as @a[nbt={SelectedItem:{id:"mca:water_key"}}] at @s as @e[type=elder_guardian,distance=0..50,tag=!vuln] run summon lightning_bolt ~ ~-40 ~
execute as @a[nbt={SelectedItem:{id:"mca:water_key"}}] at @s as @e[type=elder_guardian,distance=0..50,tag=!vuln] run scoreboard players add @e[type=marker,name=dmain] guardianCount 1
execute as @a[nbt={SelectedItem:{id:"mca:water_key"}}] at @s as @e[type=elder_guardian,distance=0..50,tag=!vuln] run tag @s add vuln

# Player Kill Count
scoreboard players set @e[name=dmain,type=marker] playerElderKills 0
execute as @a run scoreboard players operation @e[name=dmain,type=marker] playerElderKills += @a elderGuardKill 

# Boss Finish
execute as @e[name=dmain,type=marker] if score @s guardianCount = @s playerElderKills if entity @s[scores={playerElderKills=3..}] run give @r mca:fire_key_shard 1
execute as @e[name=dmain,type=marker] if score @s guardianCount = @s playerElderKills if entity @s[scores={playerElderKills=3..}] run function world:bosses/guardian/reset

# Guardians
execute as @e[type=guardian] at @s unless entity @e[type=elder_guardian,distance=0..200] run effect give @s wither 10 0
