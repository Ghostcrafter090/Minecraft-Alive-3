
scoreboard objectives add td dummy
execute as @a at @s unless entity @e[tag=!notick,tag=decayPoint,type=marker,distance=0..350] run summon minecraft:marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"derp"}',Tags:["mina","decayPoint"]}
scoreboard players add @e[tag=decayPoint,type=marker] td 1
execute if entity @e[tag=decayPoint,type=marker,scores={td=15..}] run scoreboard players set @e[tag=decayPoint,type=marker] td 0
execute as @a at @s run spreadplayers ~ ~ 0 350 false @e[tag=decayPoint,type=marker,distance=0..350]