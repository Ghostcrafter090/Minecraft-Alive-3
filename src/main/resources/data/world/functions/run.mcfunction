
function world:run_/0
execute unless entity @e[type=marker,name=dmain] run summon marker 0 100 0 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959,CustomName:'{"text":"dmain"}'}
execute unless entity @e[name=dmain,type=marker,tag=runner] as @e[name=dmain,type=marker,tag=!runner,sort=random,limit=1] run tag @s add runner
function world:run_/3
execute as @e[name=dmain,type=marker,scores={dmainCount=2..}] run function world:killdmains
execute as @e[name=dmain,type=marker,scores={dmainCount=2..},limit=1,sort=random] unless score @s killMe = @s timeAlive run kill @s
execute as @e[name=dmain,tag=!runner,type=marker] run kill @s
execute positioned 0 253 0 as @a[distance=0..20] run spreadplayers ~ ~ 20 260 false @s
function world:run_/8
execute if entity @e[type=marker,name=dmain,scores={regun=4..}] if entity @a run function world:effects/thirst
function world:effects/stamina
execute if entity @e[type=marker,name=dmain,scores={regu=..3}] run function world:dimensions/the_ways/main
function world:run_/12
execute if entity @e[type=marker,name=dmain,scores={regun=2..}] run function world:effects/health
execute if entity @e[type=marker,name=dmain,scores={vregu=6..6}] run scoreboard players operation @e[type=marker,name=dmain] vregu -= @e[type=marker,name=dmain] blockta
scoreboard players add @e[type=marker,name=dmain] vregu 1
execute if entity @e[type=marker,name=dmain,scores={vregu=6..}] run function world:tickers/vregu
execute if entity @e[type=marker,name=dmain,scores={vregu=7..}] run scoreboard players set @e[type=marker,name=dmain] vregu 6
scoreboard players add @e[type=marker,name=dmain] regu 1
execute if entity @e[type=marker,name=dmain,scores={regu=19..}] run function world:run_/19
execute if entity @e[type=marker,name=dmain,scores={regu=4..4}] run function world:mothernature/blockdecay/sec1/init
execute if entity @e[type=marker,name=dmain,scores={regu=1..1}] as @e[name=dmain,type=marker] at @s unless entity @e[type=villager,distance=0..20] unless entity @e[type=player,distance=0..20] run function world:mothernature/blockdecay/base/basic
execute if entity @e[type=marker,name=dmain,scores={regu=4..4}] as @e[name=dmain,type=marker] at @s unless entity @e[type=villager,distance=0..20] unless entity @e[type=player,distance=0..20] run function world:mothernature/blockdecay/sec1/main
execute if entity @e[type=marker,name=dmain,scores={regu=7..7}] as @e[name=dmain,type=marker] at @s unless entity @e[type=villager,distance=0..20] unless entity @e[type=player,distance=0..20] run function world:mothernature/blockdecay/sec2/main
execute if entity @e[type=marker,name=dmain,scores={regu=10..10}] as @e[name=dmain,type=marker] at @s unless entity @e[type=villager,distance=0..20] unless entity @e[type=player,distance=0..20] run function world:mothernature/blockdecay/sec3/main
execute if entity @e[type=marker,name=dmain,scores={regu=13..13}] as @e[name=dmain,type=marker] at @s unless entity @e[type=villager,distance=0..20] unless entity @e[type=player,distance=0..20] run function world:mothernature/plants/sec4/main
execute if entity @e[type=marker,name=dmain,scores={regu=16..16}] as @e[name=dmain,type=marker] at @s unless entity @e[type=villager,distance=0..20] unless entity @e[type=player,distance=0..20] run function world:mothernature/plants/sec5/main
execute if entity @e[type=marker,name=dmain,scores={regu=..1}] if entity @e[type=marker,name=dmain,scores={blockt=4..}] run function world:lagcontrol/moblag
execute if entity @e[type=marker,name=dmain,scores={regu=1..1}] run kill @e[type=area_effect_cloud]
scoreboard players add @e[type=marker,name=dmain] regun 1
execute if entity @e[type=marker,name=dmain,scores={aticn=4..4}] run function world:run_/30
execute if entity @e[type=marker,name=dmain,scores={aticn=4..4,blockt=2..}] run function world:run_/31
execute if entity @e[type=marker,name=dmain,scores={aticn=5..}] run scoreboard players set @e[type=marker,name=dmain] aticn 0
function world:run_/33
execute if entity @e[type=marker,name=dmain,scores={atic=20..}] run scoreboard players set @e[type=marker,name=dmain] atic 0
function world:run_/35
execute if entity @e[type=marker,name=dmain,scores={lreg=16..}] run scoreboard players set @e[type=marker,name=dmain] lreg 0
execute if entity @e[type=marker,name=dmain,scores={lreg=0..0}] run scoreboard players operation @e[type=marker,name=dmain] lreg -= @e[type=marker,name=dmain] blockta
execute if entity @e[type=marker,name=dmain,scores={lreg=-1..-1}] run scoreboard players set @e[type=marker,name=dmain] lreg 1
execute if entity @e[type=marker,name=dmain,scores={atic=19..19}] run function world:run_/39
execute if entity @e[type=marker,name=dmain,scores={blocktb=0..}] run function world:run_/40
execute if entity @e[type=marker,name=dmain,scores={blocktb=-10..}] if entity @e[type=marker,name=dmain,scores={atic=19..19}] run scoreboard players operation @e[type=marker,name=dmain] blockta += @e[type=marker,name=dmain] blockt
execute if entity @e[type=marker,name=dmain,scores={atic=19..19}] run scoreboard players add @e[type=marker,name=dmain] blocktc 1
execute if entity @e[type=marker,name=dmain,scores={blocktc=1..}] run function world:run_/43
execute if entity @e[type=marker,name=dmain,scores={moriatic=..1}] run scoreboard players set @e[type=marker,name=dmain] moriatic 5
function world:run_/45
execute if entity @e[type=marker,name=dmain,scores={wmoriatic=..2}] run function world:run_/46
scoreboard players remove @e[type=marker,name=dmain] wmoriatic 1
execute if entity @e[type=marker,name=dmain,scores={systic=..1}] run function world:run_/48
execute if entity @e[type=marker,name=dmain,scores={systic=200..}] run scoreboard players set @e[type=marker,name=dmain] systic 200
execute if entity @e[type=marker,name=dmain,scores={systic=..1}] run scoreboard players set @e[type=marker,name=dmain] systic 5
function world:run_/51
execute if entity @e[type=marker,name=dmain,scores={extrastic=..1}] run function world:tickers/extras
function world:run_/53
execute if entity @a[scores={path=25..25}] as @e[type=!item,type=!falling_block] unless entity @s[type=marker] at @s run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace grass_block
execute if entity @a[scores={path=24..24}] as @e[type=!item,type=!falling_block] unless entity @s[type=marker] at @s run fill ~ ~-1 ~ ~ ~-1 ~ farmland replace dirt
execute if entity @a[scores={path=26..}] run scoreboard players set @a path 0
function world:run_/57
execute if entity @e[type=marker,name=dmain,scores={loadclock=..40}] run scoreboard players set @e[type=marker,name=dmain] blockta 10
execute unless entity @e[type=marker,name=dmain,scores={loadob=1..1}] run function world:loadob
scoreboard objectives add blightExit dummy
execute in mca:the_blight run function world:run_/61
execute as @a[scores={blightExit=1..}] run function world:run_/62
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
execute as @a[scores={blightExit=160..}] run function world:run_/78
function world:blight/main
execute as @e[tag=sawayig] if entity @s[tag=stuck] at @s if entity @e[type=minecraft:potion,nbt={Item:{tag:{Potion:"minecraft:water_breathing"}}},distance=0..3] run tag @s add blight
scoreboard objectives add blightEnter dummy
execute in mca:the_blight run function world:run_/82
execute as @a[scores={blightEnter=1..}] run function world:run_/83
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
execute as @a[scores={blightEnter=160..}] run function world:run_/99