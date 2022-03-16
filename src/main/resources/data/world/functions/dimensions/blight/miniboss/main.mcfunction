
function world:dimensions/blight/miniboss/main.0/0
execute if entity @e[tag=!notick,tag=dmain,type=marker,tag=!bbbAdded] run function world:dimensions/blight/miniboss/bossbar
bossbar set minecraft:blightboss players @a
execute as @e[tag=templedeath,type=marker,tag=spawned] unless entity @e[tag=blightboss,type=phantom] run tag @a[distance=0..1000,tag=!killedBlight] add killedBlight
execute if entity @e[tag=dmain,type=marker,scores={atic=5..5}] run function world:dimensions/blight/miniboss/main.0/4
execute if entity @e[tag=dmain,type=marker,scores={atic=3..3}] run function world:dimensions/blight/miniboss/main.0/5
function world:dimensions/blight/miniboss/start
execute as @e[tag=templedeath] run function world:dimensions/blight/miniboss/main.0/7
execute as @e[tag=templedeath,tag=!spawned] at @s unless entity @a[tag=killedBlight,distance=0..1000] positioned ~ 230 ~ if entity @e[type=marker,tag=spinner,distance=0..10] run summon phantom ~ ~ ~ {HasVisualFire:0b,Glowing:0b,CustomNameVisible:1b,PersistenceRequired:1b,Health:150f,AX:0,AY:0,AZ:0,Size:0,Tags:["blightboss"],Passengers:[{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["bbmark"],DisabledSlots:4144959,CustomName:'{"text":"blightbossmark"}'}],CustomName:'{"text":"The Great Reckoning"}',ActiveEffects:[{Id:10b,Amplifier:0b,Duration:11111},{Id:12b,Amplifier:1b,Duration:11111},{Id:13b,Amplifier:1b,Duration:11111}],Attributes:[{Name:generic.max_health,Base:96},{Name:generic.follow_range,Base:500},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.6},{Name:generic.attack_damage,Base:7}]}
execute as @e[tag=templedeath,tag=!spawned,scores={timeDead=15..}] run function world:dimensions/blight/miniboss/main.0/9
execute unless entity @e[tag=templedeath,type=marker] run kill @e[tag=spinner,type=marker]
execute as @e[tag=blightboss] store result score @s bossHealth run data get entity @s Health
execute as @e[tag=blightboss,type=phantom,scores={bossHealth=..30}] run scoreboard players add @s timeDead 1
execute as @e[tag=blightboss,type=phantom,scores={timeDead=1..}] run function world:dimensions/blight/miniboss/main.0/13
execute as @e[type=phantom] store result score @s hurttime run data get entity @s HurtTime
execute as @e[tag=blightboss,type=phantom] run function world:dimensions/blight/miniboss/main.0/15
execute as @e[tag=blightboss,type=phantom,scores={timeDead=100..}] run kill @s
kill @e[tag=bbmark,type=armor_stand]
execute if entity @e[tag=dmain,type=marker,scores={atic=6..6}] as @e[tag=blightboss,type=phantom] at @s run playsound minecraft:map.ambience.end master @a ~ ~ ~ 20
execute as @a run function world:dimensions/blight/miniboss/main.0/19
execute as @e[tag=blightboss,limit=1,sort=random] store result bossbar minecraft:blightboss value if entity @e[tag=blightboss,type=phantom]