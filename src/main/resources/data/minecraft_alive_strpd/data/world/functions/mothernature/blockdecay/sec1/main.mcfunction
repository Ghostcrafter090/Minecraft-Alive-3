
scoreboard objectives add td dummy
execute as @a at @s unless entity @e[name=derp,distance=0..120] run summon minecraft:marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"derp"}',Tags:["mina"]}
execute as @e[name=derp,scores={td=1..6}] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ grass replace
execute as @e[name=derp,scores={td=7..7}] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ fern replace
execute as @e[name=derp,scores={td=8..8}] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ large_fern replace
execute as @e[name=derp,scores={td=9..9}] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ red_tulip replace
execute as @e[name=derp,scores={td=10..10}] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ poppy replace
execute as @e[name=derp,scores={td=11..11}] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ dandelion replace
execute as @e[name=derp,scores={td=12..12}] at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ allium replace
scoreboard players add @e[name=derp] td 1
execute if entity @e[name=derp,scores={td=15..}] run scoreboard players set @e[name=derp] td 0
execute as @a at @s run spreadplayers ~ ~ 0 80 false @e[name=derp,distance=0..120]
execute at @e[name=derp] run function minecraft_alive_strpd:data/world/functions/mothernature/blockdecay/sec1/main_/12
function minecraft_alive_strpd:data/world/functions/mothernature/blockdecay/sec1/main_/13
execute if entity @a[scores={regulate=2..}] run scoreboard players set @a regulate 0
execute at @e[name=derp] run function minecraft_alive_strpd:data/world/functions/mothernature/blockdecay/sec1/main_/15
execute if entity @a[scores={regulate=1..1}] run function world:mothernature/blockdecay/sec1/parta
execute if entity @a[scores={regulate=0..0}] run function world:mothernature/blockdecay/sec1/partb
execute at @e[name=derp] run function minecraft_alive_strpd:data/world/functions/mothernature/blockdecay/sec1/main_/18