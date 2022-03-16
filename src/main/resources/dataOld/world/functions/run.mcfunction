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
scoreboard objectives add aticn dummy
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
scoreboard objectives add derper dummy

# Dimension
execute as @a store result score @s dimension run data get entity @s Dimension

# derp Fixer
execute as @a[limit=1,sort=random,scores={atic=1..1}] run function world:util/derpfixer

# Thirst fixer
execute as @a[tag=!spawned] run scoreboard players set @s thirst 100
execute as @a[tag=!spawned] run tag @s add spawned

# Player atic
scoreboard players add @a atic 1
execute as @a[scores={atic=20..}] run scoreboard players set @s atic 0

# dmain Fixer
execute unless entity @e[type=marker,name=dmain] run summon marker 0 100 0 {Tags:['dmain'],CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,CustomName:'{"text":"dmain"}'}
execute unless entity @e[name=dmain,type=marker,tag=runner] as @e[name=dmain,type=marker,tag=!runner,sort=random,limit=1] run tag @s add runner
scoreboard players add @e[name=dmain,type=marker] timeAlive 1
execute store result score @e[name=dmain,type=marker] dmainCount if entity @e[name=dmain,type=marker]
scoreboard players set @e[name=dmain,type=marker] killMe 0
execute as @e[name=dmain,type=marker,scores={dmainCount=2..}] run function world:killdmains
execute as @e[name=dmain,type=marker,scores={dmainCount=2..},limit=1,sort=random] unless score @s killMe = @s timeAlive run kill @s
execute as @e[name=dmain,tag=!runner,type=marker] run kill @s
execute positioned 0 253 0 as @a[distance=0..20] run spreadplayers ~ ~ 20 260 false @s

# Regu Fixer
execute as @e[tag=dmain,type=marker,scores={regu=..-1000}] run scoreboard players set @s regu -1000

# Main Loops
scoreboard objectives add rgfu dummy
scoreboard objectives add rgfun dummy
scoreboard players set @e[type=marker,name=dmain] rgfun -5
# execute if entity @e[type=marker,name=dmain,scores={regun=6..}] run function world:effects/sys
execute as @e[type=marker,name=dmain,scores={regun=4..},limit=1] if entity @s[scores={enableThirst=1..1}] if entity @a run function world:effects/thirst
execute if entity @e[type=marker,name=dmain,scores={enableTheForest=1..1}] run function world:start/startup
execute if entity @e[type=marker,name=dmain,scores={enableStamina=1..1}] run function world:effects/stamina
# function world:weather/storm
execute if entity @e[type=marker,name=dmain,scores={regu=..3}] run function world:dimensions/the_ways/main
execute if entity @e[type=marker,name=dmain,scores={enableProgressi=1..1}] run function world:bosses/main
function world:village/names
execute as @e[name=dmain,type=marker] run scoreboard players operation @s rgfun = @s regulationModif
execute as @e[name=dmain,type=marker,scores={rgfun=0..0}] run scoreboard players set @s rgfun 2
execute as @e[type=marker,name=dmain,scores={regun=2..}] if entity @s[scores={enableLowHealth=1..1}] run function world:effects/health
execute if entity @e[type=marker,name=dmain,scores={vregu=6..6}] run scoreboard players operation @e[type=marker,name=dmain] vregu -= @e[type=marker,name=dmain] blockta
scoreboard players add @e[type=marker,name=dmain] vregu 1
execute if entity @e[type=marker,name=dmain,scores={vregu=6..}] run function world:tickers/vregu
execute if entity @e[type=marker,name=dmain,scores={vregu=7..}] run scoreboard players set @e[type=marker,name=dmain] vregu 6
scoreboard players add @e[type=marker,name=dmain] regu 1
execute if entity @e[type=marker,name=dmain,scores={regu=19..}] run scoreboard players operation @e[type=marker,name=dmain] rgfu = @e[type=marker,name=dmain] blockt
execute if entity @e[type=marker,name=dmain,scores={regu=19..}] run scoreboard players operation @e[type=marker,name=dmain] rgfu *= @e[type=marker,name=dmain] rgfun
execute if entity @e[type=marker,name=dmain,scores={regu=19..}] run scoreboard players operation @e[type=marker,name=dmain] regu = @e[type=marker,name=dmain] rgfu
execute if entity @e[type=marker,name=dmain,scores={enableBlockDeca=1..1}] run function world:mothernature/blockdecay/main
execute if entity @e[type=marker,name=dmain,scores={enableTreeDynam=1..1}] run function world:mothernature/plants/main
execute if entity @e[type=marker,name=dmain,scores={regu=16..16}] as @e[name=dmain,type=marker] if entity @s[scores={enablePlantDyna=1..1}] at @s unless entity @e[type=villager,distance=0..20] unless entity @e[type=player,distance=0..20] run function world:mothernature/plants/sec5/main

# Lag Control
execute if entity @e[type=marker,name=dmain,scores={regu=..20}] if entity @e[type=marker,name=dmain,scores={blockt=4..}] run function world:lagcontrol/moblag
function world:lagcontrol/culling
execute if entity @e[type=marker,name=dmain,scores={regu=1..1}] run kill @e[type=area_effect_cloud]
scoreboard players add @e[type=marker,name=dmain] regun 1
execute if entity @e[type=marker,name=dmain,scores={aticn=4..4}] store result score @e[type=marker,name=dmain] blockt run worldborder get
execute if entity @e[type=marker,name=dmain,scores={aticn=4..4}] run function world:tickers/atic
execute if entity @e[type=marker,name=dmain,scores={aticn=4..4,blockt=2..}] run scoreboard players set @e[type=marker,name=dmain] regun 10
execute if entity @e[type=marker,name=dmain,scores={aticn=4..4,blockt=2..}] run scoreboard players operation @e[type=marker,name=dmain] regun -= @e[type=marker,name=dmain] blockt
execute if entity @e[type=marker,name=dmain,scores={aticn=4..4,blockt=2..}] run scoreboard players operation @e[type=marker,name=dmain] moriatic += @e[type=marker,name=dmain] blockt
execute if entity @e[type=marker,name=dmain,scores={aticn=4..4,blockt=2..}] unless entity @e[type=marker,name=dmain,scores={starttime=..12}] run scoreboard players operation @e[type=marker,name=dmain] starttime += @e[type=marker,name=dmain] blockt
execute if entity @e[type=marker,name=dmain,scores={aticn=5..}] run scoreboard players set @e[type=marker,name=dmain] aticn 0
scoreboard players add @e[type=marker,name=dmain] aticn 1
scoreboard players add @e[type=marker,name=dmain] atic 1
execute if entity @e[type=marker,name=dmain,scores={atic=20..}] run scoreboard players set @e[type=marker,name=dmain] atic 0
scoreboard players set @e[type=marker,name=dmain] blockt2 10000000

# World Load
#  execute if entity @e[type=marker,name=dmain,scores={moriatic=..2}] positioned -299 31 -256 run forceload add ~17 ~17 ~-17 ~-17
#  execute unless entity @e[type=marker,name=dmain,scores={moriatic=..2}] positioned -299 31 -256 run forceload remove ~17 ~17 ~-17 ~-17
# execute positioned -504 11 45 run forceload add ~17 ~17 ~-17 ~-17

# Moria Load
scoreboard players add @e[type=marker,name=dmain] lreg 1
# execute if entity @e[type=marker,name=dmain,scores={lreg=16..}] run data remove storage minecraft:entity.location load
# execute if entity @e[type=marker,name=dmain,scores={lreg=16..}] as @e[scores={airfill=1..1}] run data modify storage minecraft:entity.location load append from entity @s Pos
# execute if entity @e[type=marker,name=dmain,scores={lreg=16..}] as @e[scores={waterfill=1..1}] run data modify storage minecraft:entity.location load append from entity @s Pos
# execute if entity @e[type=marker,name=dmain,scores={lreg=16..}] as @e[scores={airfill=1..1}] run function world:grabentity
# execute if entity @e[type=marker,name=dmain,scores={lreg=16..}] as @e[scores={waterfill=1..1}] run function world:grabentity

# execute if entity @e[type=marker,name=dmain,scores={lreg=16..}] run function world:worldload
execute if entity @e[type=marker,name=dmain,scores={lreg=16..}] run scoreboard players set @e[type=marker,name=dmain] lreg 0
execute if entity @e[type=marker,name=dmain,scores={lreg=0..0}] run scoreboard players operation @e[type=marker,name=dmain] lreg -= @e[type=marker,name=dmain] blockta
execute if entity @e[type=marker,name=dmain,scores={lreg=-1..-1}] run scoreboard players set @e[type=marker,name=dmain] lreg 1

# No tick
execute as @e[type=chest_minecart,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=arrow,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=egg,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=evoker_fangs,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=experience_orb,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=small_fireball,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=minecart,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=item_frame,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=tnt,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=snowball,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=glow_item_frame,tag=!notick,limit=1,sort=random] run tag @s add notick
execute as @e[type=boat,tag=!notick,limit=1,sort=random] run tag @s add notick

# No kill
execute as @e[type=cat,limit=1,sort=random] if data entity @s[tag=!nokill] Owner run tag @s add nokill
execute as @e[type=horse,limit=1,sort=random] if data entity @s[tag=!nokill] Owner run tag @s add nokill
execute as @e[type=fox,limit=1,sort=random] if data entity @s[tag=!nokill] Owner run tag @s add nokill
execute as @e[type=horse,limit=1,sort=random] if data entity @s[tag=!nokill] Owner run tag @s add nokill
execute as @e[type=llama,limit=1,sort=random] if data entity @s[tag=!nokill] Owner run tag @s add nokill
execute as @e[type=mule,limit=1,sort=random] if data entity @s[tag=!nokill] Owner run tag @s add nokill
execute as @e[type=donkey,limit=1,sort=random] if data entity @s[tag=!nokill] Owner run tag @s add nokill
execute as @e[type=ocelot,limit=1,sort=random] if data entity @s[tag=!nokill] Owner run tag @s add nokill
execute as @e[type=parrot,limit=1,sort=random] if data entity @s[tag=!nokill] Owner run tag @s add nokill
execute as @e[type=pig,tag=!nokill,nbt={Saddle:1b},limit=1,sort=random] run tag @s add nokill
execute as @e[type=strider,tag=!nokill,nbt={Saddle:1b},limit=1,sort=random] run tag @s add nokill
execute as @e[type=trader_llama,limit=1,sort=random] if data entity @s[tag=!nokill] Owner run tag @s add nokill
execute as @e[type=trident,limit=1,sort=random] if data entity @s[tag=!nokill] Owner run tag @s add nokill
execute as @e[type=wolf,limit=1,sort=random] if data entity @s[tag=!nokill] Owner run tag @s add nokill

# Mina
execute as @e[type=marker,name=vilf,tag=!mina,limit=1,sort=random] run tag @s add mina
execute as @e[type=marker,name=vilf2,tag=!mina,limit=1,sort=random] run tag @s add mina
execute as @e[type=marker,name=vilf3,tag=!mina,limit=1,sort=random] run tag @s add mina

# Blockta Manager
execute if entity @e[type=marker,name=dmain,scores={atic=19..19}] run scoreboard players operation @e[type=marker,name=dmain] blocktb = @e[type=marker,name=dmain] blockt
execute if entity @e[type=marker,name=dmain,scores={atic=19..19}] run scoreboard players operation @e[type=marker,name=dmain] blocktb -= @e[type=marker,name=dmain] blockta
execute if entity @e[type=marker,name=dmain,scores={blocktb=0..}] if entity @e[type=marker,name=dmain,scores={atic=19..19}] run scoreboard players operation @e[type=marker,name=dmain] blockte = @e[type=marker,name=dmain] blocktb
execute if entity @e[type=marker,name=dmain,scores={blocktb=0..}] if entity @e[type=marker,name=dmain,scores={atic=19..19}] run scoreboard players operation @e[type=marker,name=dmain] blockte *= @e[type=marker,name=dmain] blockt
execute if entity @e[type=marker,name=dmain,scores={blocktb=-10..}] if entity @e[type=marker,name=dmain,scores={atic=19..19}] run scoreboard players operation @e[type=marker,name=dmain] blockta += @e[type=marker,name=dmain] blockt
execute if entity @e[type=marker,name=dmain,scores={atic=19..19}] run scoreboard players add @e[type=marker,name=dmain] blocktc 1
execute if entity @e[type=marker,name=dmain,scores={blocktc=1..}] run scoreboard players remove @e[type=marker,name=dmain] blockta 1
execute if entity @e[type=marker,name=dmain,scores={blocktc=1..}] run scoreboard players set @e[type=marker,name=dmain] blocktc 0

# Moria Tic
# execute if entity @e[type=marker,name=dmain,scores={moriatic=..1}] run function world:moria/monsters/fire/main
# execute if entity @e[type=marker,name=dmain,scores={moriatic=..1}] run function world:blight/main
# execute if entity @e[type=marker,name=dmain,scores={moriatic=..1}] run scoreboard players set @e[type=marker,name=dmain] moriatica 5
# execute if entity @e[type=marker,name=dmain,scores={moriatic=..1}] run scoreboard players operation @e[type=marker,name=dmain] moriatica += @e[type=marker,name=dmain] blockta
# execute if entity @e[type=marker,name=dmain,scores={moriatic=..1}] run scoreboard players operation @e[type=marker,name=dmain] moriatic += @e[type=marker,name=dmain] moriatica

execute if entity @e[type=marker,name=dmain,scores={moriatic=..1}] run scoreboard players set @e[type=marker,name=dmain] moriatic 5
scoreboard players remove @e[type=marker,name=dmain] moriatic 1

# Bodys
execute if entity @e[type=marker,name=dmain,scores={enableBodies=1..1}] run function world:effects/bodys

# Water Moria Tic
# execute if entity @e[type=marker,name=dmain,scores={wmoriatic=..2}] run function world:moria/monsters/fire/main
execute if entity @e[type=marker,name=dmain,scores={wmoriatic=..2}] run scoreboard players operation @e[type=marker,name=dmain] wmoriatic *= @e[type=marker,name=dmain] blockta
execute if entity @e[type=marker,name=dmain,scores={wmoriatic=..2}] run scoreboard players set @e[type=marker,name=dmain] wmoriatic 20
scoreboard players remove @e[type=marker,name=dmain] wmoriatic 1

# Weather Tic
# scoreboard objectives add weathertic dummy
# execute if entity @e[type=marker,name=dmain,scores={weathertic=..2}] run function world:weather/storm
# execute if entity @e[type=marker,name=dmain,scores={weathertic=..2}] run scoreboard players operation @e[type=marker,name=dmain] weathertic += @e[type=marker,name=dmain] blockta
# execute if entity @e[type=marker,name=dmain,scores={weathertic=..2}] run scoreboard players set @e[type=marker,name=dmain] weathertic 1
# execute if entity @e[type=marker,name=dmain,scores={weathertic=200..}] run scoreboard players set @e[type=marker,name=dmain] weathertic 200
# scoreboard players remove @e[type=marker,name=dmain] weathertic 1

# Wind
# function world:weather/windeffect

# Sys Tic
execute if entity @e[type=marker,name=dmain,scores={systic=..1}] run function world:effects/sys
execute if entity @e[type=marker,name=dmain,scores={systic=..1}] run scoreboard players operation @e[type=marker,name=dmain] systic += @e[type=marker,name=dmain] blockta
execute if entity @e[type=marker,name=dmain,scores={systic=200..}] run scoreboard players set @e[type=marker,name=dmain] systic 200
execute if entity @e[type=marker,name=dmain,scores={systic=..1}] run scoreboard players set @e[type=marker,name=dmain] systic 5
scoreboard players remove @e[type=marker,name=dmain] systic 1

# Extras Tic
execute if entity @e[type=marker,name=dmain,scores={enableSawayigs=1..1}] run function world:extras/sawayig/main
execute if entity @e[type=marker,name=dmain,scores={extrastic=..1}] run function world:tickers/extras
scoreboard players remove @e[type=marker,name=dmain] extrastic 1

# Blight Boss
function world:dimensions/blight/main

# Paths
execute if entity @e[type=marker,name=dmain,scores={enablePaths=1..1}] run function world:mothernature/extras/paths

# Load Clock
scoreboard objectives add loadclock dummy
scoreboard players add @e[type=marker,name=dmain] loadclock 1
execute if entity @e[type=marker,name=dmain,scores={loadclock=..40}] run scoreboard players set @e[type=marker,name=dmain] blockta 10

# Declare Objectives
execute unless entity @e[type=marker,name=dmain,scores={loadob=1..1}] run function world:loadob

# The Blight
scoreboard objectives add blightExit dummy
execute in mca:the_blight positioned 0 100 0 as @a[distance=0..3000] if entity @s[scores={air=..10}] run scoreboard players add @s blightExit 1
execute as @a unless entity @s[scores={air=..10}] if entity @s[scores={blightExit=-5..}] run scoreboard players remove @s blightExit 1
execute as @a[scores={blightExit=1..}] at @s run playsound minecraft:ambient.basalt_deltas.additions master @a ~ ~ ~ 1 2
execute as @a[scores={blightExit=1..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightExit=10..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightExit=20..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightExit=30..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightExit=40..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightExit=50..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightExit=60..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightExit=70..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightExit=80..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightExit=90..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightExit=100..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightExit=110..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightExit=120..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightExit=130..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightExit=140..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightExit=150..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightExit=160..}] at @s in minecraft:overworld run tp @s ~ ~ ~
execute as @a[scores={blightExit=160..}] run scoreboard players set @s exitedBlight 1
execute as @a[scores={blightExit=160..}] at @s run scoreboard players set @s blightExit 150

function world:blight/main
execute as @e[tag=sawayig] if entity @s[tag=stuck] at @s if entity @e[type=minecraft:potion,nbt={Item:{tag:{Potion:"minecraft:water_breathing"}}},distance=0..3] run tag @s add blight
execute as @e[tag=sawayig] if entity @s[tag=stuck] at @s if entity @e[type=minecraft:potion,nbt={Item:{tag:{Potion:"minecraft:long_water_breathing"}}},distance=0..3] run tag @s add blight
scoreboard objectives add blightEnter dummy
execute as @e[tag=sawayig] if entity @s[tag=stuck] if entity @s[tag=blight] at @s as @a[distance=0..30] run scoreboard players add @s blightEnter 2
execute as @a unless entity @s[scores={air=..10}] if entity @s[scores={blightEnter=-5..}] run scoreboard players remove @s blightEnter 1
execute as @a[scores={blightEnter=1..}] at @s run playsound minecraft:ambient.basalt_deltas.additions master @a ~ ~ ~ 1 2
execute as @a[scores={blightEnter=1..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightEnter=10..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightEnter=20..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightEnter=30..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightEnter=40..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightEnter=50..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightEnter=60..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightEnter=70..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightEnter=80..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightEnter=90..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightEnter=100..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightEnter=110..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightEnter=120..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightEnter=130..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightEnter=140..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightEnter=150..}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.3 10 force
execute as @a[scores={blightEnter=160..}] at @s in mca:the_blight run tp @s ~ ~ ~
execute as @a[scores={blightEnter=160..}] run scoreboard players set @s enteredBlight 1
execute as @a[scores={blightEnter=160..}] as @e[tag=sawayig] at @s run summon tnt ~ ~ ~
execute as @a[scores={blightEnter=160..}] as @e[tag=sawayig] at @s run tag @s add nostuck
execute as @a[scores={blightEnter=160..}] at @s run scoreboard players set @s blightEnter 150