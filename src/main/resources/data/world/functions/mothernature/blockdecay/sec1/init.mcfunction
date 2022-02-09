
scoreboard objectives add td dummy
execute as @a at @s unless entity @e[name=derp,type=marker,distance=0..350] run summon minecraft:marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"derp"}',Tags:["mina"]}
execute as @e[name=derp,type=marker,scores={td=1..6}] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ grass replace
execute as @e[name=derp,type=marker,scores={td=7..7}] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ fern replace
execute as @e[name=derp,type=marker,scores={td=8..8}] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ large_fern replace
execute as @e[name=derp,type=marker,scores={td=9..9}] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ red_tulip replace
execute as @e[name=derp,type=marker,scores={td=10..10}] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ poppy replace
execute as @e[name=derp,type=marker,scores={td=11..11}] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ dandelion replace
execute as @e[name=derp,type=marker,scores={td=12..12}] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ allium replace
scoreboard players add @e[name=derp,type=marker] td 1
execute if entity @e[name=derp,type=marker,scores={td=15..}] run scoreboard players set @e[name=derp,type=marker] td 0
execute as @a at @s run spreadplayers ~ ~ 0 350 false @e[name=derp,type=marker,distance=0..350]