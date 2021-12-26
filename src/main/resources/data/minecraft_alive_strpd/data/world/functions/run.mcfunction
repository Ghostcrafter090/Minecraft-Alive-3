# Define
scoreboard objectives add moriatic dummy
scoreboard objectives add wmoriatic dummy
scoreboard objectives add eb dummy
scoreboard objectives add vregu dummy
scoreboard objectives add blockt dummy
scoreboard objectives add blockta dummy
scoreboard objectives add blocktb dummy
scoreboard objectives add blocktc dummy
scoreboard objectives add blockte dummy
scoreboard objectives add blockt2 dummy
scoreboard objectives add atic dummy
scoreboard objectives add atic2 dummy
scoreboard objectives add regu dummy
scoreboard objectives add regun dummy
scoreboard objectives add path dummy
scoreboard objectives add systic dummy
scoreboard objectives add extrastic dummy
scoreboard objectives add lreg dummy
scoreboard objectives add moriatica dummy


# Main Loops
# execute if entity @e[name=dmain,scores={regun=6..}] run function world:effects/sys
execute if entity @e[name=dmain,scores={regun=4..}] if entity @a run function world:effects/thirst
function world:start/startup
function world:effects/stamina
function world:weather/storm
execute if entity @e[name=dmain,scores={vregu=6..}] run function world:dimensions/the_ways/gates/waygate
execute if entity @e[type=ravager] run function world:bosses/villageraid/main
execute if entity @e[name=dmain,scores={regun=2..}] run function world:effects/health
execute if entity @e[name=dmain,scores={vregu=6..6}] run scoreboard players operation @e[name=dmain] vregu -= @e[name=dmain] blockta
scoreboard players add @e[name=dmain] vregu 1
execute if entity @e[name=dmain,scores={vregu=6..}] run function world:village/village2
execute if entity @e[name=dmain,scores={vregu=6..}] run function world:util/datagrabbers
execute if entity @e[name=dmain,scores={vregu=6..}] run function world:util/random
execute if entity @e[name=dmain,scores={vregu=6..}] run function world:dimensions/the_ways/main
execute if entity @e[name=dmain,scores={vregu=6..}] run function world:extras/myddraal/main
execute if entity @e[name=dmain,scores={vregu=7..}] run scoreboard players set @e[name=dmain] vregu 6
scoreboard players add @e[name=dmain] regu 1
execute if entity @e[name=dmain,scores={regu=1..1}] run function world:mothernature/blockdecay/sec1/main
execute if entity @e[name=dmain,scores={regu=4..4}] run function world:mothernature/blockdecay/sec2/main
execute if entity @e[name=dmain,scores={regu=7..7}] run function world:mothernature/blockdecay/sec3/main
execute if entity @e[name=dmain,scores={regu=10..10}] run function world:mothernature/plants/sec4/main
execute if entity @e[name=dmain,scores={regu=13..13}] run function world:mothernature/plants/sec5/main
execute if entity @e[name=dmain,scores={regu=16..}] run scoreboard players set @e[name=dmain] regu 0

# Lag Control
execute if entity @e[name=dmain,scores={regu=1..1}] run kill @e[type=area_effect_cloud]
scoreboard players add @e[name=dmain] regun 1
execute if entity @e[name=dmain,scores={atic=20..20}] store result score @e[name=dmain] blockt run worldborder get
execute if entity @e[name=dmain,scores={atic=20..20}] run worldborder set 10000000 
execute if entity @e[name=dmain,scores={atic=20..20}] run worldborder set 10000100 5
execute if entity @e[name=dmain,scores={atic=20..20}] run scoreboard players operation @e[name=dmain] blockt -= @e[name=dmain] blockt2
execute if entity @e[name=dmain,scores={atic=20..20}] run scoreboard players operation @e[name=dmain] atic2 = @e[name=dmain] atic
execute if entity @e[name=dmain,scores={atic=20..20}] run scoreboard players operation @e[name=dmain] blockt -= @e[name=dmain] atic
execute if entity @e[name=dmain,scores={atic=20..20,blockt=2..}] run scoreboard players set @e[name=dmain] regun 10
execute if entity @e[name=dmain,scores={atic=20..20,blockt=2..}] run scoreboard players operation @e[name=dmain] regun -= @e[name=dmain] blockt
execute if entity @e[name=dmain,scores={atic=20..20,blockt=2..}] run scoreboard players operation @e[name=dmain] moriatic += @e[name=dmain] blockt
execute if entity @e[name=dmain,scores={atic=21..}] run scoreboard players set @e[name=dmain] atic 0
scoreboard players add @e[name=dmain] atic 1
scoreboard players set @e[name=dmain] blockt2 10000000

# World Load
execute if entity @e[name=dmain,scores={moriatic=..2}] positioned -299 31 -256 run forceload add ~17 ~17 ~-17 ~-17
execute unless entity @e[name=dmain,scores={moriatic=..2}] positioned -299 31 -256 run forceload remove ~17 ~17 ~-17 ~-17
# execute positioned -504 11 45 run forceload add ~17 ~17 ~-17 ~-17

# Moria Load
scoreboard players add @e[name=dmain] lreg 1
# execute if entity @e[name=dmain,scores={lreg=16..}] run data remove storage minecraft:entity.location load
# execute if entity @e[name=dmain,scores={lreg=16..}] as @e[scores={airfill=1..1}] run data modify storage minecraft:entity.location load append from entity @s Pos
# execute if entity @e[name=dmain,scores={lreg=16..}] as @e[scores={waterfill=1..1}] run data modify storage minecraft:entity.location load append from entity @s Pos
execute if entity @e[name=dmain,scores={lreg=16..}] as @e[scores={airfill=1..1}] run function world:grabentity
execute if entity @e[name=dmain,scores={lreg=16..}] as @e[scores={waterfill=1..1}] run function world:grabentity

execute if entity @e[name=dmain,scores={lreg=16..}] run function world:worldload
execute if entity @e[name=dmain,scores={lreg=16..}] run scoreboard players set @e[name=dmain] lreg 0
execute if entity @e[name=dmain,scores={lreg=0..0}] run scoreboard players operation @e[name=dmain] lreg -= @e[name=dmain] blockta
execute if entity @e[name=dmain,scores={lreg=-1..-1}] run scoreboard players set @e[name=dmain] lreg 1


# Blockta Manager
execute if entity @e[name=dmain,scores={atic=19..19}] run scoreboard players operation @e[name=dmain] blocktb = @e[name=dmain] blockt
execute if entity @e[name=dmain,scores={atic=19..19}] run scoreboard players operation @e[name=dmain] blocktb -= @e[name=dmain] blockta
execute if entity @e[name=dmain,scores={blocktb=0..}] if entity @e[name=dmain,scores={atic=19..19}] run scoreboard players operation @e[name=dmain] blockte = @e[name=dmain] blocktb
execute if entity @e[name=dmain,scores={blocktb=0..}] if entity @e[name=dmain,scores={atic=19..19}] run scoreboard players operation @e[name=dmain] blockte *= @e[name=dmain] blockt
execute if entity @e[name=dmain,scores={blocktb=0..}] if entity @e[name=dmain,scores={atic=19..19}] run scoreboard players operation @e[name=dmain] blockta += @e[name=dmain] blockt
execute if entity @e[name=dmain,scores={atic=19..19}] run scoreboard players add @e[name=dmain] blocktc 1
execute if entity @e[name=dmain,scores={blocktc=7..}] run scoreboard players remove @e[name=dmain] blockta 1
execute if entity @e[name=dmain,scores={blocktc=7..}] run scoreboard players set @e[name=dmain] blocktc 0

# Moria Tic
execute if entity @e[name=dmain,scores={moriatic=..1}] run function world:moria/monsters/fire/main
execute if entity @e[name=dmain,scores={moriatic=..1}] run function world:blight/main
execute if entity @e[name=dmain,scores={moriatic=..1}] run scoreboard players set @e[name=dmain] moriatica 5
execute if entity @e[name=dmain,scores={moriatic=..1}] run scoreboard players operation @e[name=dmain] moriatica += @e[name=dmain] blockta
execute if entity @e[name=dmain,scores={moriatic=..1}] run scoreboard players operation @e[name=dmain] moriatic += @e[name=dmain] moriatica

execute if entity @e[name=dmain,scores={moriatic=..1}] run scoreboard players set @e[name=dmain] moriatic 5
scoreboard players remove @e[name=dmain] moriatic 1

# Water Moria Tic
execute if entity @e[name=dmain,scores={wmoriatic=..2}] run function world:moria/monsters/fire/main
execute if entity @e[name=dmain,scores={wmoriatic=..2}] run scoreboard players operation @e[name=dmain] wmoriatic *= @e[name=dmain] blockta
execute if entity @e[name=dmain,scores={wmoriatic=..2}] run scoreboard players set @e[name=dmain] wmoriatic 20
scoreboard players remove @e[name=dmain] wmoriatic 1

# Sys Tic
execute if entity @e[name=dmain,scores={systic=..1}] run function world:effects/sys
execute if entity @e[name=dmain,scores={systic=..1}] run scoreboard players operation @e[name=dmain] systic += @e[name=dmain] blockta
execute if entity @e[name=dmain,scores={systic=..1}] run scoreboard players set @e[name=dmain] systic 5
scoreboard players remove @e[name=dmain] systic 1

# Extras Tic
function world:extras/sawayig/main
execute if entity @e[name=dmain,scores={extrastic=..1}] run function world:extras/phantoms/crystal
execute if entity @e[name=dmain,scores={extrastic=..1}] run function world:extras/creeper/fire
execute if entity @e[name=dmain,scores={extrastic=..1}] run function world:extras/enderman/endereffect
execute if entity @e[name=dmain,scores={extrastic=..1}] run function world:extras/cubeentity/slime/grow
execute if entity @e[name=dmain,scores={extrastic=..1}] run function world:extras/cubeentity/magma/grow
execute if entity @e[name=dmain,scores={extrastic=..1}] run scoreboard players operation @e[name=dmain] extrastic += @e[name=dmain] blockta
execute if entity @e[name=dmain,scores={extrastic=..1}] run scoreboard players set @e[name=dmain] extrastic 5
scoreboard players remove @e[name=dmain] extrastic 1

# Paths
scoreboard players add @a path 1
execute if entity @a[scores={path=25..25}] as @e[type=!item] unless entity @s[type=marker] at @s run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace grass_block
execute if entity @a[scores={path=24..24}] as @e[type=!item] unless entity @s[type=marker] at @s run fill ~ ~-1 ~ ~ ~-1 ~ farmland replace dirt
execute if entity @a[scores={path=26..}] run scoreboard players set @a path 0

# Load Clock
scoreboard objectives add loadclock dummy
scoreboard players add @e[name=dmain] loadclock 1
execute if entity @e[name=dmain,scores={loadclock=..40}] run scoreboard players set @e[name=dmain] blockta 10
