
function world:start/startup.0/0
execute if entity @a[scores={death2=1..}] as @e[tag=!notick,type=!player] run kill @s
execute as @a positioned -83.65 240 105.635 run spawnpoint @s ~ ~ ~
execute unless entity @e[tag=dmain,scores={firststart=2..2}] run gamerule doImmediateRespawn true
execute if entity @e[tag=dmain,scores={firststart=2..2}] run gamerule doImmediateRespawn false
execute if entity @e[tag=dmain,scores={firststart=1..1}] run function world:start/startup.0/5
execute unless entity @e[tag=dmain,scores={firststart=1..2}] if entity @e[tag=dmain,scores={starttime=20..20}] run scoreboard players set @a firststart 1
execute if entity @a[scores={death2=1..}] run function world:start/startup.0/7
execute if entity @e[tag=dmain,scores={starttime=2..2}] run setworldspawn -103 226 128
execute if entity @e[tag=dmain,scores={starttime=11..11}] positioned -83.65 240 105.635 run playsound map.plane.crasheffect master @a ~ ~ ~ 1
execute if entity @e[tag=dmain,scores={starttime=10..10}] run tp @a -83.65 240 105.635
execute if entity @e[tag=dmain,scores={starttime=2..2}] run function world:start/startup.0/11
execute if entity @e[tag=dmain,scores={starttime=3..3}] run function world:start/startup.0/12
execute if entity @e[tag=dmain,scores={starttime=4..4}] run function world:start/startup.0/13
execute if entity @e[tag=dmain,scores={starttime=..3020}] run function world:start/startup.0/14
execute if entity @e[tag=dmain,scores={starttime=..3100}] run function world:start/startup.0/15
execute if entity @e[tag=dmain,scores={starttime=2468..2478}] unless entity @e[type=tnt] at @e[name=jet2] run summon tnt ~ ~3 ~ {fuse:1b}
execute if entity @e[tag=dmain,scores={starttime=3020..3030}] unless entity @e[type=tnt] at @e[name=jet] run summon tnt ~ ~3 ~ {fuse:1b}
execute if entity @e[tag=dmain,scores={starttime=2468..3100}] run function world:start/startup.0/18
execute if entity @e[tag=dmain,scores={starttime=3020..3180}] run function world:start/startup.0/19
execute if entity @e[tag=dmain,scores={starttime=3100..3100}] at @e[name=jet2] run summon tnt ~ ~5 ~ {fuse:1b}
execute if entity @e[tag=dmain,scores={starttime=3180..3180}] run function world:start/startup.0/21
execute if entity @e[tag=dmain,scores={starttime=4..4}] run function world:start/startup.0/22
execute if entity @e[tag=dmain,scores={starttime=2..2}] run function world:start/spawnvill
execute as @a at @s unless entity @e[tag=StartVillager,distance=0..50] run stopsound @s master map.plane.crasheffect
execute if entity @e[tag=dmain,scores={starttime=..3180}] run function world:start/startup.0/25
execute if entity @e[tag=dmain,scores={starttime=3200..3300}] run kill @e[type=item]