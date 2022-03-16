# Define
scoreboard objectives add blightbossSize dummy
scoreboard objectives add hurttime dummy
scoreboard objectives add timeDead dummy
scoreboard objectives add Y dummy
scoreboard objectives add bossHealth dummy

# Define Bossbar
execute if entity @e[tag=dmain,type=marker,tag=!bbbAdded] run function world:dimensions/blight/miniboss/bossbar
bossbar set minecraft:blightboss players @a
# tag @a[tag=!bbbAdded] add bbbAdded

# Main
execute as @e[tag=templedeath,type=marker,tag=spawned] unless entity @e[tag=blightboss,type=phantom] run tag @a[distance=0..1000,tag=!killedBlight] add killedBlight

# AI
execute if entity @e[name=dmain,type=marker,scores={atic=5..5}] run data modify entity @e[tag=blightboss,limit=1,sort=random] AZ set from entity @p Pos[2]
execute if entity @e[name=dmain,type=marker,scores={atic=5..5}] as @a store result score @s Y run data get entity @s Pos[1]
execute if entity @e[name=dmain,type=marker,scores={atic=5..5}] run scoreboard players add @a Y 50
execute if entity @e[name=dmain,type=marker,scores={atic=5..5}] as @e[tag=blightboss,limit=5,sort=random] store result entity @s AY double 1 run scoreboard players get @p Y
execute if entity @e[name=dmain,type=marker,scores={atic=5..5}] run data modify entity @e[tag=blightboss,limit=1,sort=random] AX set from entity @p Pos[0]
execute if entity @e[name=dmain,type=marker,scores={atic=3..3}] as @e[tag=blightboss,limit=5,sort=random] run scoreboard players add @s blightbossSize 1
execute if entity @e[name=dmain,type=marker,scores={atic=3..3}] as @e[tag=blightboss,limit=5,sort=random] store result entity @s Size int 1 run scoreboard players get @s blightbossSize

# Spawn
function world:dimensions/blight/miniboss/start
execute as @e[tag=templedeath] if entity @e[tag=blightboss] run scoreboard players add @s timeDead 1
execute as @e[tag=templedeath] unless entity @e[tag=blightboss] run scoreboard players set @s timeDead 0
execute as @e[tag=templedeath,tag=!spawned] at @s unless entity @a[tag=killedBlight,distance=0..1000] positioned ~ 230 ~ if entity @e[type=marker,tag=spinner,distance=0..10] run summon phantom ~ ~ ~ {HasVisualFire:0b,Glowing:0b,CustomNameVisible:1b,PersistenceRequired:1b,Health:150f,AX:0,AY:0,AZ:0,Size:0,Tags:["blightboss"],Passengers:[{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["bbmark"],DisabledSlots:4144959,CustomName:'{"text":"blightbossmark"}'}],CustomName:'{"text":"The Great Reckoning"}',ActiveEffects:[{Id:10b,Amplifier:0b,Duration:11111},{Id:12b,Amplifier:1b,Duration:11111},{Id:13b,Amplifier:1b,Duration:11111}],Attributes:[{Name:generic.max_health,Base:96},{Name:generic.follow_range,Base:500},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.6},{Name:generic.attack_damage,Base:7}]}
execute as @e[tag=templedeath,tag=!spawned,scores={timeDead=15..}] at @s unless entity @a[tag=killedBlight,distance=0..1000] positioned ~ 230 ~ if entity @e[type=marker,tag=spinner,distance=0..10] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 20 0.1
execute as @e[tag=templedeath,tag=!spawned,scores={timeDead=15..}] at @s unless entity @a[tag=killedBlight,distance=0..1000] positioned ~ 230 ~ if entity @e[type=marker,tag=spinner,distance=0..10] run playsound minecraft:entity.enderman.stare master @a ~ ~ ~ 20 0.1
execute as @e[tag=templedeath,tag=!spawned,scores={timeDead=15..}] at @s unless entity @a[tag=killedBlight,distance=0..1000] positioned ~ 230 ~ if entity @e[type=marker,tag=spinner,distance=0..10] as @e[tag=blightboss,type=phantom] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 20 20 20 2 300 force
execute as @e[tag=templedeath,tag=!spawned,scores={timeDead=15..}] at @s unless entity @a[tag=killedBlight,distance=0..1000] positioned ~ 230 ~ if entity @e[type=marker,tag=spinner,distance=0..10] run tag @s add spawned
execute unless entity @e[tag=templedeath,type=marker] run kill @e[tag=spinner,type=marker]

# Death Effects
execute as @e[tag=blightboss] store result score @s bossHealth run data get entity @s Health
execute as @e[tag=blightboss,type=phantom,scores={bossHealth=..30}] run scoreboard players add @s timeDead 1
execute as @e[tag=blightboss,type=phantom,scores={timeDead=1..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 20 20 20 2 300 force
execute as @e[tag=blightboss,type=phantom,scores={timeDead=1..}] at @s run playsound minecraft:ambient.cave master @a ~ ~ ~ 15 0.1

# Hurt Effects
execute as @e[type=phantom] store result score @s hurttime run data get entity @s HurtTime
execute as @e[tag=blightboss,type=phantom] at @s if entity @s[scores={hurttime=1..}] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 20 0.1
execute as @e[tag=blightboss,type=phantom] at @s if entity @s[scores={hurttime=1..}] run particle minecraft:falling_lava ~ ~ ~ 20 20 20 2 100 force
execute as @e[tag=blightboss,type=phantom] at @s if entity @s[scores={hurttime=1..}] run particle dust 1.0 0.0 0.0 2.0 ~ ~ ~ 20 20 20 2 100 force
execute as @e[tag=blightboss,type=phantom] at @s if entity @s[scores={hurttime=1..}] run effect give @a[distance=0..300] minecraft:nausea 4 5
execute as @e[tag=blightboss,type=phantom,scores={timeDead=100..}] run kill @s
kill @e[tag=bbmark,type=armor_stand]

# Active Effects
execute if entity @e[name=dmain,type=marker,scores={atic=6..6}] as @e[tag=blightboss,type=phantom] at @s run playsound minecraft:map.ambience.end master @a ~ ~ ~ 20

# Boss Bar
execute as @a at @s unless entity @e[tag=blightboss,type=phantom,distance=0..400] run bossbar set minecraft:blightboss visible false
execute as @a at @s if entity @e[tag=blightboss,type=phantom,distance=0..400] run bossbar set minecraft:blightboss visible true
execute as @e[tag=blightboss,limit=1,sort=random] store result bossbar minecraft:blightboss value if entity @e[tag=blightboss,type=phantom]