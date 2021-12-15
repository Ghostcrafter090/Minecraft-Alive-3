scoreboard objectives add starttime dummy
scoreboard objectives add death2 deathCount
scoreboard objectives add firststart dummy
scoreboard players add @e[name=dmain] starttime 1
execute if entity @a[scores={death2=1..}] as @e[type=!player] run kill @s
execute as @a positioned -83.65 240 105.635 run spawnpoint @s ~ ~ ~
execute unless entity @e[name=dmain,scores={firststart=2..2}] run gamerule doImmediateRespawn true
execute if entity @e[name=dmain,scores={firststart=2..2}] run gamerule doImmediateRespawn false
execute if entity @e[name=dmain,scores={firststart=1..1}] run kill @e[tag=StartVillager]
execute if entity @e[name=dmain,scores={firststart=1..1}] run kill @a
execute if entity @e[name=dmain,scores={firststart=1..1}] run scoreboard players set @a firststart 2
execute unless entity @e[name=dmain,scores={firststart=1..2}] if entity @e[name=dmain,scores={starttime=20..20}] run scoreboard players set @a firststart 1
execute if entity @a[scores={death2=1..}] run stopsound @a
execute if entity @a[scores={death2=1..}] run scoreboard players set @a death2 0
# execute if entity @e[name=dmain,scores={starttime=2..2}] as @e[type=!player] unless entity @s[type=armor_stand] run kill @s
execute if entity @e[name=dmain,scores={starttime=2..2}] run setworldspawn -103 226 128
execute if entity @e[name=dmain,scores={starttime=11..11}] positioned -83.65 240 105.635 run playsound map.plane.crasheffect master @a ~ ~ ~ 1
execute if entity @e[name=dmain,scores={starttime=10..10}] run tp @a -83.65 240 105.635
execute if entity @e[name=dmain,scores={starttime=2..2}] run setblock -103 226 152 structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:-2,mode:"LOAD",posY:1,sizeX:48,posZ:0,integrity:1.0f,showair:0b,name:"world:jetfront",id:"minecraft:structure_block",sizeY:22,sizeZ:48,showboundingbox:1b} replace
execute if entity @e[name=dmain,scores={starttime=2..2}] run setblock -105 226 57 structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:-47,mode:"LOAD",posY:1,sizeX:48,posZ:35,integrity:1.0f,showair:0b,name:"world:jetrightwing",id:"minecraft:structure_block",sizeY:22,sizeZ:48,showboundingbox:1b} replace
execute if entity @e[name=dmain,scores={starttime=2..2}] run setblock -104 226 56 structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:48,posZ:0,integrity:1.0f,showair:0b,x:-104,name:"world:jetback",y:226,z:56,id:"minecraft:structure_block",sizeY:34,sizeZ:48,showboundingbox:1b} replace
execute if entity @e[name=dmain,scores={starttime=2..2}] run setblock -103 226 56 structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:-1,mode:"LOAD",posY:1,sizeX:48,posZ:48,integrity:1.0f,showair:0b,x:-103,name:"world:jetmiddle",y:226,z:56,id:"minecraft:structure_block",sizeY:22,sizeZ:48,showboundingbox:1b} replace
execute if entity @e[name=dmain,scores={starttime=2..2}] run setblock -102 226 57 structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:46,mode:"LOAD",posY:1,sizeX:48,posZ:35,integrity:1.0f,showair:0b,x:-102,name:"world:jetleftwing",y:226,z:57,id:"minecraft:structure_block",sizeY:22,sizeZ:48,showboundingbox:1b} replace
execute if entity @e[name=dmain,scores={starttime=3..3}] run setblock -103 227 152 redstone_block destroy
execute if entity @e[name=dmain,scores={starttime=3..3}] run setblock -105 227 57 redstone_block destroy
execute if entity @e[name=dmain,scores={starttime=3..3}] run setblock -104 227 56 redstone_block destroy
execute if entity @e[name=dmain,scores={starttime=3..3}] run setblock -103 227 56 redstone_block destroy
execute if entity @e[name=dmain,scores={starttime=3..3}] run setblock -102 227 57 redstone_block destroy
execute if entity @e[name=dmain,scores={starttime=4..4}] run fill -55 225 50 -155 228 120 air replace structure_block
execute if entity @e[name=dmain,scores={starttime=4..4}] run fill -60 225 120 -110 228 250 air replace structure_block
execute if entity @e[name=dmain,scores={starttime=..3020}] at @e[name=jet2] run particle cloud ~ ~2 ~-5 0.4 0.4 3 10 7 force
execute if entity @e[name=dmain,scores={starttime=..3020}] at @e[name=jet2] run particle cloud ~ ~2 ~-5 0.4 0.4 8 0.01 100 force
execute if entity @e[name=dmain,scores={starttime=..3020}] at @e[name=jet2] run particle cloud ~ ~2 ~-97 0.4 0.4 50 0.01 50 force
execute if entity @e[name=dmain,scores={starttime=..3100}] at @e[name=jet] run particle cloud ~ ~2 ~-5 0.4 0.4 3 10 7 force
execute if entity @e[name=dmain,scores={starttime=..3100}] at @e[name=jet] run particle cloud ~ ~2 ~-5 0.4 0.4 8 0.01 100 force
execute if entity @e[name=dmain,scores={starttime=..3100}] at @e[name=jet] run particle cloud ~ ~2 ~-97 0.4 0.4 50 0.01 50 force
execute if entity @e[name=dmain,scores={starttime=..3100}] at @e[name=jet3] run particle cloud ~ ~1 ~-5 0.4 0.4 3 10 7 force
execute if entity @e[name=dmain,scores={starttime=..3100}] at @e[name=jet3] run particle cloud ~ ~1 ~-5 0.4 0.4 8 0.01 100 force
execute if entity @e[name=dmain,scores={starttime=..3100}] at @e[name=jet3] run particle cloud ~ ~1 ~-107 0.4 0.4 50 0.01 50 force
execute if entity @e[name=dmain,scores={starttime=2468..2478}] unless entity @e[type=tnt] at @e[name=jet2] run summon tnt ~ ~3 ~ {fuse:1b}
execute if entity @e[name=dmain,scores={starttime=3020..3030}] unless entity @e[type=tnt] at @e[name=jet] run summon tnt ~ ~3 ~ {fuse:1b}
execute if entity @e[name=dmain,scores={starttime=2468..3100}] at @e[name=jet2] run particle large_smoke ~ ~2 ~-5 0.4 0.4 3 10 14 force
execute if entity @e[name=dmain,scores={starttime=2468..3100}] at @e[name=jet2] run particle large_smoke ~ ~2 ~-5 0.4 0.4 8 0.01 800 force
execute if entity @e[name=dmain,scores={starttime=2468..3100}] at @e[name=jet2] run particle large_smoke ~ ~2 ~-97 0.4 0.4 50 0.01 400 force
execute if entity @e[name=dmain,scores={starttime=3020..3180}] at @e[name=jet] run particle large_smoke ~ ~2 ~-5 0.4 0.4 3 10 14 force
execute if entity @e[name=dmain,scores={starttime=3020..3180}] at @e[name=jet] run particle large_smoke ~ ~2 ~-5 0.4 0.4 8 0.01 800 force
execute if entity @e[name=dmain,scores={starttime=3020..3180}] at @e[name=jet] run particle large_smoke ~ ~2 ~-97 0.4 0.4 50 0.01 400 force
execute if entity @e[name=dmain,scores={starttime=3100..3100}] at @e[name=jet2] run summon tnt ~ ~5 ~ {fuse:1b}
execute if entity @e[name=dmain,scores={starttime=3180..3180}] at @e[name=jet] run summon tnt ~ ~4 ~ {fuse:1b}
execute if entity @e[name=dmain,scores={starttime=3180..3180}] at @e[name=jet] run summon tnt ~ ~5 ~1 {fuse:1b}
execute if entity @e[name=dmain,scores={starttime=4..4}] at @e[name=jet] run summon fireball ~ ~1 ~ {Glowing:1b,CustomNameVisible:0b,ExplosionPower:126,direction:[0.0,0.0,0.0],power:[0.0,0.0,0.0],CustomName:'{"text":"Nuke"}'}
execute if entity @e[name=dmain,scores={starttime=4..4}] run function world:start/spawnnuke
execute if entity @e[name=dmain,scores={starttime=2..2}] run function world:start/spawnvill
execute as @a at @s unless entity @e[tag=StartVillager,distance=0..50] run stopsound @s master map.plane.crasheffect
execute if entity @e[name=dmain,scores={starttime=..3180}] run scoreboard players set @a thirst 30
execute if entity @e[name=dmain,scores={starttime=..3180}] run kill @e[type=item]
execute if entity @e[name=dmain,scores={starttime=3200..3300}] run kill @e[type=item]
