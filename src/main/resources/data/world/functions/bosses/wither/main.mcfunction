# With_witherians will invulnerable up untill a water key is held within 100 blocks of the With witherian
#
# items required for the key:
# 
# Heart of the sea
# Totem of undying
# Water Key Shard
# Prismarine Shard

# Define
scoreboard objectives add witherStartTic dummy
scoreboard objectives add witherBool dummy
scoreboard objectives add witherianCount dummy
scoreboard objectives add WithwitherKill minecraft.killed:minecraft.wither
scoreboard objectives add playerWithKills dummy

# Main
execute as @a at @s as @e[tag=!found,type=item,distance=0..10] if entity @s[nbt={Item:{id:"mca:fire_key_shard",Count:1b}}] run tag @s add fire_key_shard
execute as @a at @s as @e[tag=!found,type=item,distance=0..10] if entity @s[nbt=!{Item:{id:"mca:fire_key_shard",Count:1b}}] run tag @s add found
execute as @e[type=item,tag=fire_key_shard] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] run particle minecraft:bubble ~ ~ ~ 1 1 1 0 10 force
execute as @e[type=item,tag=fire_key_shard] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:nautilus_shell",Count:1b}}] run particle minecraft:falling_dripstone_water ~ ~ ~ 1 10 1 0.1 10 force
execute as @e[type=item,tag=fire_key_shard] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:totem_of_undying",Count:1b}}] run particle minecraft:enchant ~ ~ ~ 1 10 1 0.1 10 force
execute as @e[type=item,tag=fire_key_shard] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:heart_of_the_sea",Count:1b}}] run particle minecraft:dolphin ~ ~ ~ 1 10 1 0.1 10 force
execute as @e[type=item,tag=fire_key_shard] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:totem_of_undying",Count:1b}}] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:heart_of_the_sea",Count:1b}}] if entity @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:nautilus_shell",Count:1b}}] run scoreboard players add @s witherStartTic 1
execute as @e[type=item,tag=fire_key_shard,scores={witherStartTic=1..}] at @s run function world:bosses/witherian/start
execute as @e[type=item,tag=fire_key_shard,scores={witherStartTic=1..}] run function world:bosses/witherian/effects
execute if entity @e[name=dmain,scores={witherBool=1..1}] run function world:bosses/witherian/effects
execute as @e[type=item,tag=fire_key_shard] at @s run playsound minecraft:ambient.underwater.loop.additions.ultra_rare master @a ~ ~ ~ 0.1 1.5
execute as @e[type=item,tag=fire_key_shard] at @s run particle minecraft:warped_spore ~ ~ ~ 0 0 0 1 10
execute if entity @e[name=dmain,type=marker,scores={witherBool=1..1}]
scoreboard players add @e[tag=fire_key_spawn,type=marker] timeAlive 1
execute as @e[tag=fire_key_spawn,type=marker,scores={timeAlive=10..}] at @s run summon item ~ ~ ~ {Item:{id:"mca:fire_key",Count:1b}}
execute as @e[tag=fire_key_spawn,type=marker,scores={timeAlive=10..}] at @s run kill @s

# Spawn Site Effects
execute as @e[tag=fire_key_spawn_site] at @s run playsound minecraft:ambient.underwater.loop.additions.ultra_rare master @a ~ ~ ~ 0.1 1.5
execute as @e[tag=fire_key_spawn_site] at @s run particle minecraft:warped_spore ~ ~ ~ 10 10 10 1 200

# Uninvuln
execute as @e[type=wither,tag=!vuln,tag=!With] run data modify entity @s Invulnerable set value 1b
execute as @e[type=wither,tag=!vuln,tag=!With] run tag @s add With
execute as @e[type=wither,tag=vuln,tag=!vulnN] run data modify entity @s Invulnerable set value 0b
execute as @e[type=wither,tag=vuln,tag=!vulnN] run tag @s add vulnN

# Key
execute as @a[nbt={SelectedItem:{id:"mca:fire_key"}}] at @s as @e[type=wither,distance=0..50,tag=!vuln] run summon lightning_bolt ~ ~-40 ~
execute as @a[nbt={SelectedItem:{id:"mca:fire_key"}}] at @s as @e[type=wither,distance=0..50,tag=!vuln] run scoreboard players add @e[type=marker,name=dmain] witherianCount 1
execute as @a[nbt={SelectedItem:{id:"mca:fire_key"}}] at @s as @e[type=wither,distance=0..50,tag=!vuln] run tag @s add vuln

# Player Kill Count
scoreboard players set @e[name=dmain,type=marker] playerWithKills 0
execute as @a run scoreboard players operation @e[name=dmain,type=marker] playerWithKills += @a WithwitherKill 

# Boss Finish
execute as @e[name=dmain,type=marker] if score @s witherianCount = @s playerWithKills if entity @s[scores={playerWithKills=1..}] run give @r mca:defunct_end_key 1
execute as @e[name=dmain,type=marker] if score @s witherianCount = @s playerWithKills if entity @s[scores={playerWithKills=1..}] run function world:bosses/witherian/reset

# witherians
execute as @e[type=witherian] at @s unless entity @e[type=wither,distance=0..200] run effect give @s wither 10 0
