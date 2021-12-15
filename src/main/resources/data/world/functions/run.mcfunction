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
scoreboard objectives add dmainCount dummy
scoreboard objectives add timeAlive dummy
scoreboard objectives add killMe dummy

# dmain Fixer
execute unless entity @e[type=armor_stand,name=dmain] run summon armor_stand 0 100 0 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,CustomName:'{"text":"dmain"}'}
scoreboard players add @e[name=dmain,type=armor_stand] timeAlive 1
execute store result score @e[name=dmain,type=armor_stand] dmainCount if entity @e[name=dmain]
scoreboard players set @e[name=dmain,type=armor_stand] killMe 0
execute as @e[name=dmain,type=armor_stand,scores={dmainCount=2..}] run function world:killdmains
execute as @e[name=dmain,type=armor_stand,scores={dmainCount=2..},limit=1,sort=random] unless score @s killMe = @s timeAlive run kill @s

# Main Loops
scoreboard objectives add rgfu dummy
scoreboard objectives add rgfun dummy
scoreboard players set @e[type=armor_stand,name=dmain] rgfun -5
# execute if entity @e[type=armor_stand,name=dmain,scores={regun=6..}] run function world:effects/sys
execute if entity @e[type=armor_stand,name=dmain,scores={regun=4..}] if entity @a run function world:effects/thirst
# function world:start/startup
function world:effects/stamina
# function world:weather/storm
execute if entity @e[type=armor_stand,name=dmain,scores={regu=..3}] run function world:dimensions/the_ways/main
execute if entity @e[type=ravager] run function world:bosses/villageraid/main
execute if entity @e[type=armor_stand,name=dmain,scores={regun=2..}] run function world:effects/health
execute if entity @e[type=armor_stand,name=dmain,scores={vregu=6..6}] run scoreboard players operation @e[type=armor_stand,name=dmain] vregu -= @e[type=armor_stand,name=dmain] blockta
scoreboard players add @e[type=armor_stand,name=dmain] vregu 1
execute if entity @e[type=armor_stand,name=dmain,scores={vregu=6..}] run function world:tickers/vregu
execute if entity @e[type=armor_stand,name=dmain,scores={vregu=7..}] run scoreboard players set @e[type=armor_stand,name=dmain] vregu 6
scoreboard players add @e[type=armor_stand,name=dmain] regu 1
execute if entity @e[type=armor_stand,name=dmain,scores={regu=19..}] run scoreboard players operation @e[type=armor_stand,name=dmain] rgfu = @e[type=armor_stand,name=dmain] blockta
execute if entity @e[type=armor_stand,name=dmain,scores={regu=19..}] run scoreboard players operation @e[type=armor_stand,name=dmain] rgfu /= @e[type=armor_stand,name=dmain] rgfun
execute if entity @e[type=armor_stand,name=dmain,scores={regu=19..}] run scoreboard players operation @e[type=armor_stand,name=dmain] regu = @e[type=armor_stand,name=dmain] rgfu
execute if entity @e[type=armor_stand,name=dmain,scores={regu=1..1}] run function world:mothernature/blockdecay/base/basic
execute if entity @e[type=armor_stand,name=dmain,scores={regu=4..4}] run function world:mothernature/blockdecay/sec1/main
execute if entity @e[type=armor_stand,name=dmain,scores={regu=7..7}] run function world:mothernature/blockdecay/sec2/main
execute if entity @e[type=armor_stand,name=dmain,scores={regu=10..10}] run function world:mothernature/blockdecay/sec3/main
execute if entity @e[type=armor_stand,name=dmain,scores={regu=13..13}] run function world:mothernature/plants/sec4/main
execute if entity @e[type=armor_stand,name=dmain,scores={regu=16..16}] run function world:mothernature/plants/sec5/main

# Lag Control
execute if entity @e[type=armor_stand,name=dmain,scores={regu=..1}] if entity @e[type=armor_stand,name=dmain,scores={blockt=4..}] run function world:lagcontrol/moblag
execute if entity @e[type=armor_stand,name=dmain,scores={regu=1..1}] run kill @e[type=area_effect_cloud]
scoreboard players add @e[type=armor_stand,name=dmain] regun 1
execute if entity @e[type=armor_stand,name=dmain,scores={atic=20..20}] store result score @e[type=armor_stand,name=dmain] blockt run worldborder get
execute if entity @e[type=armor_stand,name=dmain,scores={atic=20..20}] run function world:tickers/atic
execute if entity @e[type=armor_stand,name=dmain,scores={atic=20..20,blockt=2..}] run scoreboard players set @e[type=armor_stand,name=dmain] regun 10
execute if entity @e[type=armor_stand,name=dmain,scores={atic=20..20,blockt=2..}] run scoreboard players operation @e[type=armor_stand,name=dmain] regun -= @e[type=armor_stand,name=dmain] blockt
execute if entity @e[type=armor_stand,name=dmain,scores={atic=20..20,blockt=2..}] run scoreboard players operation @e[type=armor_stand,name=dmain] moriatic += @e[type=armor_stand,name=dmain] blockt
execute if entity @e[type=armor_stand,name=dmain,scores={atic=20..20,blockt=2..}] unless entity @e[type=armor_stand,name=dmain,scores={starttime=..12}] run scoreboard players operation @e[type=armor_stand,name=dmain] starttime += @e[type=armor_stand,name=dmain] blockt
execute if entity @e[type=armor_stand,name=dmain,scores={atic=21..}] run scoreboard players set @e[type=armor_stand,name=dmain] atic 0
scoreboard players add @e[type=armor_stand,name=dmain] atic 1
scoreboard players set @e[type=armor_stand,name=dmain] blockt2 10000000

# World Load
execute if entity @e[type=armor_stand,name=dmain,scores={moriatic=..2}] positioned -299 31 -256 run forceload add ~17 ~17 ~-17 ~-17
execute unless entity @e[type=armor_stand,name=dmain,scores={moriatic=..2}] positioned -299 31 -256 run forceload remove ~17 ~17 ~-17 ~-17
# execute positioned -504 11 45 run forceload add ~17 ~17 ~-17 ~-17

# Moria Load
scoreboard players add @e[type=armor_stand,name=dmain] lreg 1
# execute if entity @e[type=armor_stand,name=dmain,scores={lreg=16..}] run data remove storage minecraft:entity.location load
# execute if entity @e[type=armor_stand,name=dmain,scores={lreg=16..}] as @e[scores={airfill=1..1}] run data modify storage minecraft:entity.location load append from entity @s Pos
# execute if entity @e[type=armor_stand,name=dmain,scores={lreg=16..}] as @e[scores={waterfill=1..1}] run data modify storage minecraft:entity.location load append from entity @s Pos
execute if entity @e[type=armor_stand,name=dmain,scores={lreg=16..}] as @e[scores={airfill=1..1}] run function world:grabentity
# execute if entity @e[type=armor_stand,name=dmain,scores={lreg=16..}] as @e[scores={waterfill=1..1}] run function world:grabentity

execute if entity @e[type=armor_stand,name=dmain,scores={lreg=16..}] run function world:worldload
execute if entity @e[type=armor_stand,name=dmain,scores={lreg=16..}] run scoreboard players set @e[type=armor_stand,name=dmain] lreg 0
execute if entity @e[type=armor_stand,name=dmain,scores={lreg=0..0}] run scoreboard players operation @e[type=armor_stand,name=dmain] lreg -= @e[type=armor_stand,name=dmain] blockta
execute if entity @e[type=armor_stand,name=dmain,scores={lreg=-1..-1}] run scoreboard players set @e[type=armor_stand,name=dmain] lreg 1


# Blockta Manager
execute if entity @e[type=armor_stand,name=dmain,scores={atic=19..19}] run scoreboard players operation @e[type=armor_stand,name=dmain] blocktb = @e[type=armor_stand,name=dmain] blockt
execute if entity @e[type=armor_stand,name=dmain,scores={atic=19..19}] run scoreboard players operation @e[type=armor_stand,name=dmain] blocktb -= @e[type=armor_stand,name=dmain] blockta
execute if entity @e[type=armor_stand,name=dmain,scores={blocktb=0..}] if entity @e[type=armor_stand,name=dmain,scores={atic=19..19}] run scoreboard players operation @e[type=armor_stand,name=dmain] blockte = @e[type=armor_stand,name=dmain] blocktb
execute if entity @e[type=armor_stand,name=dmain,scores={blocktb=0..}] if entity @e[type=armor_stand,name=dmain,scores={atic=19..19}] run scoreboard players operation @e[type=armor_stand,name=dmain] blockte *= @e[type=armor_stand,name=dmain] blockt
execute if entity @e[type=armor_stand,name=dmain,scores={blocktb=-10..}] if entity @e[type=armor_stand,name=dmain,scores={atic=19..19}] run scoreboard players operation @e[type=armor_stand,name=dmain] blockta += @e[type=armor_stand,name=dmain] blockt
execute if entity @e[type=armor_stand,name=dmain,scores={atic=19..19}] run scoreboard players add @e[type=armor_stand,name=dmain] blocktc 1
execute if entity @e[type=armor_stand,name=dmain,scores={blocktc=1..}] run scoreboard players remove @e[type=armor_stand,name=dmain] blockta 1
execute if entity @e[type=armor_stand,name=dmain,scores={blocktc=1..}] run scoreboard players set @e[type=armor_stand,name=dmain] blocktc 0

# Moria Tic
# execute if entity @e[type=armor_stand,name=dmain,scores={moriatic=..1}] run function world:moria/monsters/fire/main
# execute if entity @e[type=armor_stand,name=dmain,scores={moriatic=..1}] run function world:blight/main
# execute if entity @e[type=armor_stand,name=dmain,scores={moriatic=..1}] run scoreboard players set @e[type=armor_stand,name=dmain] moriatica 5
# execute if entity @e[type=armor_stand,name=dmain,scores={moriatic=..1}] run scoreboard players operation @e[type=armor_stand,name=dmain] moriatica += @e[type=armor_stand,name=dmain] blockta
# execute if entity @e[type=armor_stand,name=dmain,scores={moriatic=..1}] run scoreboard players operation @e[type=armor_stand,name=dmain] moriatic += @e[type=armor_stand,name=dmain] moriatica

execute if entity @e[type=armor_stand,name=dmain,scores={moriatic=..1}] run scoreboard players set @e[type=armor_stand,name=dmain] moriatic 5
scoreboard players remove @e[type=armor_stand,name=dmain] moriatic 1

# Water Moria Tic
execute if entity @e[type=armor_stand,name=dmain,scores={wmoriatic=..2}] run function world:moria/monsters/fire/main
execute if entity @e[type=armor_stand,name=dmain,scores={wmoriatic=..2}] run scoreboard players operation @e[type=armor_stand,name=dmain] wmoriatic *= @e[type=armor_stand,name=dmain] blockta
execute if entity @e[type=armor_stand,name=dmain,scores={wmoriatic=..2}] run scoreboard players set @e[type=armor_stand,name=dmain] wmoriatic 20
scoreboard players remove @e[type=armor_stand,name=dmain] wmoriatic 1

# Weather Tic
# scoreboard objectives add weathertic dummy
# execute if entity @e[type=armor_stand,name=dmain,scores={weathertic=..2}] run function world:weather/storm
# execute if entity @e[type=armor_stand,name=dmain,scores={weathertic=..2}] run scoreboard players operation @e[type=armor_stand,name=dmain] weathertic += @e[type=armor_stand,name=dmain] blockta
# execute if entity @e[type=armor_stand,name=dmain,scores={weathertic=..2}] run scoreboard players set @e[type=armor_stand,name=dmain] weathertic 1
# execute if entity @e[type=armor_stand,name=dmain,scores={weathertic=200..}] run scoreboard players set @e[type=armor_stand,name=dmain] weathertic 200
# scoreboard players remove @e[type=armor_stand,name=dmain] weathertic 1

# Wind
# function world:weather/windeffect

# Sys Tic
execute if entity @e[type=armor_stand,name=dmain,scores={systic=..1}] run function world:effects/sys
execute if entity @e[type=armor_stand,name=dmain,scores={systic=..1}] run scoreboard players operation @e[type=armor_stand,name=dmain] systic += @e[type=armor_stand,name=dmain] blockta
execute if entity @e[type=armor_stand,name=dmain,scores={systic=200..}] run scoreboard players set @e[type=armor_stand,name=dmain] systic 200
execute if entity @e[type=armor_stand,name=dmain,scores={systic=..1}] run scoreboard players set @e[type=armor_stand,name=dmain] systic 5
scoreboard players remove @e[type=armor_stand,name=dmain] systic 1

# Extras Tic
function world:extras/sawayig/main
execute if entity @e[type=armor_stand,name=dmain,scores={extrastic=..1}] run function world:tickers/extras
scoreboard players remove @e[type=armor_stand,name=dmain] extrastic 1

# Paths
scoreboard players add @a path 1
execute if entity @a[scores={path=25..25}] as @e[type=!item,type=!falling_block] unless entity @s[type=armor_stand] at @s run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace grass_block
execute if entity @a[scores={path=24..24}] as @e[type=!item,type=!falling_block] unless entity @s[type=armor_stand] at @s run fill ~ ~-1 ~ ~ ~-1 ~ farmland replace dirt
execute if entity @a[scores={path=26..}] run scoreboard players set @a path 0

# Load Clock
scoreboard objectives add loadclock dummy
scoreboard players add @e[type=armor_stand,name=dmain] loadclock 1
execute if entity @e[type=armor_stand,name=dmain,scores={loadclock=..40}] run scoreboard players set @e[type=armor_stand,name=dmain] blockta 10

# Declare Objectives
execute unless entity @e[type=armor_stand,name=dmain,scores={loadob=1..1}] run function world:loadob
