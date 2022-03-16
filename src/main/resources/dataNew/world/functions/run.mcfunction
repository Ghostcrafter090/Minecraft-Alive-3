
function world:run.0/0
execute as @a store result score @s dimension run data get entity @s Dimension
execute as @a[limit=1,sort=random,scores={atic=1..1}] run function world:util/derpfixer
execute as @a[tag=!spawned] run function world:run.0/3
scoreboard players add @a atic 1
execute as @a[scores={atic=20..}] run scoreboard players set @s atic 0
execute unless entity @e[tag=!notick,type=marker,tag=dmain] run summon marker 0 100 0 {Tags:['dmain'],CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,CustomName:'{"text":"dmain"}'}
execute unless entity @e[tag=dmain,type=marker,tag=runner] as @e[tag=dmain,type=marker,tag=!runner,sort=random,limit=1] run tag @s add runner
function world:run.0/8
execute as @e[tag=dmain,type=marker,scores={dmainCount=2..}] run function world:killdmains
execute as @e[tag=dmain,type=marker,scores={dmainCount=2..},limit=1,sort=random] unless score @s killMe = @s timeAlive run kill @s
execute as @e[tag=dmain,tag=!runner,type=marker] run kill @s
execute positioned 0 253 0 as @a[distance=0..20] run spreadplayers ~ ~ 20 260 false @s
execute as @e[tag=dmain,type=marker,scores={regu=..-1000}] run scoreboard players set @s regu -1000
function world:run.0/14
execute as @e[type=marker,tag=dmain,scores={regun=4..},limit=1] if entity @s[scores={enableThirst=1..1}] if entity @a run function world:effects/thirst
execute if entity @e[type=marker,tag=dmain,scores={enableTheForest=1..1}] run function world:start/startup
execute if entity @e[type=marker,tag=dmain,scores={enableStamina=1..1}] run function world:effects/stamina
execute if entity @e[type=marker,tag=dmain,scores={regu=..3}] run function world:dimensions/the_ways/main
execute if entity @e[type=marker,tag=dmain,scores={enableProgressi=1..1}] run function world:bosses/main
function world:village/names
execute as @e[tag=dmain,type=marker] run scoreboard players operation @s rgfun = @s regulationModif
execute as @e[tag=dmain,type=marker,scores={rgfun=0..0}] run scoreboard players set @s rgfun 2
execute as @e[type=marker,tag=dmain,scores={regun=2..}] if entity @s[scores={enableLowHealth=1..1}] run function world:effects/health
execute if entity @e[type=marker,tag=dmain,scores={vregu=6..6}] run scoreboard players operation @e[type=marker,tag=dmain] vregu -= @e[type=marker,tag=dmain] blockta
scoreboard players add @e[type=marker,tag=dmain] vregu 1
execute if entity @e[type=marker,tag=dmain,scores={vregu=6..}] run function world:tickers/vregu
execute if entity @e[type=marker,tag=dmain,scores={vregu=7..}] run scoreboard players set @e[type=marker,tag=dmain] vregu 6
scoreboard players add @e[type=marker,tag=dmain] regu 1
execute if entity @e[type=marker,tag=dmain,scores={regu=19..}] run function world:run.0/29
execute if entity @e[type=marker,tag=dmain,scores={enableBlockDeca=1..1}] run function world:mothernature/blockdecay/main
execute if entity @e[type=marker,tag=dmain,scores={enableTreeDynam=1..1}] run function world:mothernature/plants/main
execute if entity @e[type=marker,tag=dmain,scores={regu=16..16}] as @e[tag=dmain,type=marker] if entity @s[scores={enablePlantDyna=1..1}] at @s unless entity @e[type=villager,distance=0..20] unless entity @e[type=player,distance=0..20] run function world:mothernature/plants/sec5/main
execute if entity @e[type=marker,tag=dmain,scores={regu=..20}] if entity @e[type=marker,tag=dmain,scores={blockt=4..}] run function world:lagcontrol/moblag
function world:lagcontrol/culling
execute if entity @e[type=marker,tag=dmain,scores={regu=1..1}] run kill @e[type=area_effect_cloud]
scoreboard players add @e[type=marker,tag=dmain] regun 1
execute if entity @e[type=marker,tag=dmain,scores={aticn=4..4}] run function world:run.0/37
execute if entity @e[type=marker,tag=dmain,scores={aticn=4..4,blockt=2..}] run function world:run.0/38
execute if entity @e[type=marker,tag=dmain,scores={aticn=5..}] run scoreboard players set @e[type=marker,tag=dmain] aticn 0
function world:run.0/40
execute if entity @e[type=marker,tag=dmain,scores={atic=20..}] run scoreboard players set @e[type=marker,tag=dmain] atic 0
function world:run.0/42
execute if entity @e[type=marker,tag=dmain,scores={lreg=16..}] run scoreboard players set @e[type=marker,tag=dmain] lreg 0
execute if entity @e[type=marker,tag=dmain,scores={lreg=0..0}] run scoreboard players operation @e[type=marker,tag=dmain] lreg -= @e[type=marker,tag=dmain] blockta
execute if entity @e[type=marker,tag=dmain,scores={lreg=-1..-1}] run scoreboard players set @e[type=marker,tag=dmain] lreg 1
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
execute as @e[type=marker,name=vilf,tag=!mina,limit=1,sort=random] run tag @s add mina
execute as @e[type=marker,name=vilf2,tag=!mina,limit=1,sort=random] run tag @s add mina
execute as @e[type=marker,name=vilf3,tag=!mina,limit=1,sort=random] run tag @s add mina
execute if entity @e[type=marker,tag=dmain,scores={atic=19..19}] run function world:run.0/75
execute if entity @e[type=marker,tag=dmain,scores={blocktb=0..}] run function world:run.0/76
execute if entity @e[type=marker,tag=dmain,scores={blocktb=-10..}] if entity @e[type=marker,tag=dmain,scores={atic=19..19}] run scoreboard players operation @e[type=marker,tag=dmain] blockta += @e[type=marker,tag=dmain] blockt
execute if entity @e[type=marker,tag=dmain,scores={atic=19..19}] run scoreboard players add @e[type=marker,tag=dmain] blocktc 1
execute if entity @e[type=marker,tag=dmain,scores={blocktc=1..}] run function world:run.0/79
execute if entity @e[type=marker,tag=dmain,scores={moriatic=..1}] run scoreboard players set @e[type=marker,tag=dmain] moriatic 5
scoreboard players remove @e[type=marker,tag=dmain] moriatic 1
execute if entity @e[type=marker,tag=dmain,scores={enableBodies=1..1}] run function world:effects/bodys
execute if entity @e[type=marker,tag=dmain,scores={wmoriatic=..2}] run function world:run.0/83
scoreboard players remove @e[type=marker,tag=dmain] wmoriatic 1
execute if entity @e[type=marker,tag=dmain,scores={systic=..1}] run function world:run.0/85
execute if entity @e[type=marker,tag=dmain,scores={systic=200..}] run scoreboard players set @e[type=marker,tag=dmain] systic 200
execute if entity @e[type=marker,tag=dmain,scores={systic=..1}] run scoreboard players set @e[type=marker,tag=dmain] systic 5
scoreboard players remove @e[type=marker,tag=dmain] systic 1
execute if entity @e[type=marker,tag=dmain,scores={enableSawayigs=1..1}] run function world:extras/sawayig/main
execute if entity @e[type=marker,tag=dmain,scores={extrastic=..1}] run function world:tickers/extras
function world:run.0/91
execute if entity @e[type=marker,tag=dmain,scores={enablePaths=1..1}] run function world:mothernature/extras/paths
function world:run.0/93
execute if entity @e[type=marker,tag=dmain,scores={loadclock=..40}] run scoreboard players set @e[type=marker,tag=dmain] blockta 10
execute unless entity @e[type=marker,tag=dmain,scores={loadob=1..1}] run function world:loadob
scoreboard objectives add blightExit dummy
execute in mca:the_blight positioned 0 100 0 as @a[distance=0..3000] if entity @s[scores={air=..10}] run scoreboard players add @s blightExit 1
execute as @a unless entity @s[scores={air=..10}] if entity @s[scores={blightExit=-5..}] run scoreboard players remove @s blightExit 1
execute as @a[scores={blightExit=1..}] run function world:run.0/99
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
execute as @a[scores={blightExit=160..}] run function world:run.0/115
function world:blight/main
execute as @e[tag=sawayig] run function world:run.0/117
scoreboard objectives add blightEnter dummy
execute as @e[tag=sawayig] if entity @s[tag=stuck] if entity @s[tag=blight] at @s as @a[distance=0..30] run scoreboard players add @s blightEnter 2
execute as @a unless entity @s[scores={air=..10}] if entity @s[scores={blightEnter=-5..}] run scoreboard players remove @s blightEnter 1
execute as @a[scores={blightEnter=1..}] run function world:run.0/121
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
execute as @a[scores={blightEnter=160..}] run function world:run.0/137