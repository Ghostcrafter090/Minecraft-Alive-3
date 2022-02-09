
function minecraft_alive_strpd:data/world/functions/run_/0
execute if entity @e[name=dmain,scores={regun=4..}] if entity @a run function world:effects/thirst
function minecraft_alive_strpd:data/world/functions/run_/2
execute if entity @e[name=dmain,scores={vregu=6..}] run function world:dimensions/the_ways/gates/waygate
execute if entity @e[type=ravager] run function world:bosses/villageraid/main
execute if entity @e[name=dmain,scores={regun=2..}] run function world:effects/health
execute if entity @e[name=dmain,scores={vregu=6..6}] run scoreboard players operation @e[name=dmain] vregu -= @e[name=dmain] blockta
scoreboard players add @e[name=dmain] vregu 1
execute if entity @e[name=dmain,scores={vregu=6..}] run function minecraft_alive_strpd:data/world/functions/run_/8
execute if entity @e[name=dmain,scores={vregu=7..}] run scoreboard players set @e[name=dmain] vregu 6
scoreboard players add @e[name=dmain] regu 1
execute if entity @e[name=dmain,scores={regu=1..1}] run function world:mothernature/blockdecay/sec1/main
execute if entity @e[name=dmain,scores={regu=4..4}] run function world:mothernature/blockdecay/sec2/main
execute if entity @e[name=dmain,scores={regu=7..7}] run function world:mothernature/blockdecay/sec3/main
execute if entity @e[name=dmain,scores={regu=10..10}] run function world:mothernature/plants/sec4/main
execute if entity @e[name=dmain,scores={regu=13..13}] run function world:mothernature/plants/sec5/main
execute if entity @e[name=dmain,scores={regu=16..}] run scoreboard players set @e[name=dmain] regu 0
execute if entity @e[name=dmain,scores={regu=1..1}] run kill @e[type=area_effect_cloud]
scoreboard players add @e[name=dmain] regun 1
execute if entity @e[name=dmain,scores={atic=20..20}] run function minecraft_alive_strpd:data/world/functions/run_/19
execute if entity @e[name=dmain,scores={atic=20..20,blockt=2..}] run function minecraft_alive_strpd:data/world/functions/run_/20
execute if entity @e[name=dmain,scores={atic=21..}] run scoreboard players set @e[name=dmain] atic 0
function minecraft_alive_strpd:data/world/functions/run_/22
execute if entity @e[name=dmain,scores={moriatic=..2}] positioned -299 31 -256 run forceload add ~17 ~17 ~-17 ~-17
execute unless entity @e[name=dmain,scores={moriatic=..2}] positioned -299 31 -256 run forceload remove ~17 ~17 ~-17 ~-17
scoreboard players add @e[name=dmain] lreg 1
execute if entity @e[name=dmain,scores={lreg=16..}] run function minecraft_alive_strpd:data/world/functions/run_/26
execute if entity @e[name=dmain,scores={lreg=0..0}] run scoreboard players operation @e[name=dmain] lreg -= @e[name=dmain] blockta
execute if entity @e[name=dmain,scores={lreg=-1..-1}] run scoreboard players set @e[name=dmain] lreg 1
execute if entity @e[name=dmain,scores={atic=19..19}] run function minecraft_alive_strpd:data/world/functions/run_/29
execute if entity @e[name=dmain,scores={blocktb=0..}] run function minecraft_alive_strpd:data/world/functions/run_/30
execute if entity @e[name=dmain,scores={atic=19..19}] run scoreboard players add @e[name=dmain] blocktc 1
execute if entity @e[name=dmain,scores={blocktc=7..}] run function minecraft_alive_strpd:data/world/functions/run_/32
execute if entity @e[name=dmain,scores={moriatic=..1}] run function minecraft_alive_strpd:data/world/functions/run_/33
scoreboard players remove @e[name=dmain] moriatic 1
execute if entity @e[name=dmain,scores={wmoriatic=..2}] run function minecraft_alive_strpd:data/world/functions/run_/35
scoreboard players remove @e[name=dmain] wmoriatic 1
execute if entity @e[name=dmain,scores={systic=..1}] run function minecraft_alive_strpd:data/world/functions/run_/37
function minecraft_alive_strpd:data/world/functions/run_/38
execute if entity @e[name=dmain,scores={extrastic=..1}] run function minecraft_alive_strpd:data/world/functions/run_/39
function minecraft_alive_strpd:data/world/functions/run_/40
execute if entity @a[scores={path=25..25}] as @e[type=!item] unless entity @s[type=marker] at @s run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace grass_block
execute if entity @a[scores={path=24..24}] as @e[type=!item] unless entity @s[type=marker] at @s run fill ~ ~-1 ~ ~ ~-1 ~ farmland replace dirt
execute if entity @a[scores={path=26..}] run scoreboard players set @a path 0
function minecraft_alive_strpd:data/world/functions/run_/44
execute if entity @e[name=dmain,scores={loadclock=..40}] run scoreboard players set @e[name=dmain] blockta 10