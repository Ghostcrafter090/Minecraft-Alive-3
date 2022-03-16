

execute unless entity @a[tag=killedBlight,distance=0..1000] positioned ~ 230 ~ if entity @e[tag=!notick,type=marker,tag=spinner,distance=0..10] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 20 0.1
execute unless entity @a[tag=killedBlight,distance=0..1000] positioned ~ 230 ~ if entity @e[tag=!notick,type=marker,tag=spinner,distance=0..10] run playsound minecraft:entity.enderman.stare master @a ~ ~ ~ 20 0.1
execute unless entity @a[tag=killedBlight,distance=0..1000] positioned ~ 230 ~ if entity @e[tag=!notick,type=marker,tag=spinner,distance=0..10] as @e[tag=!notick,tag=blightboss,type=phantom] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 20 20 20 2 300 force
execute unless entity @a[tag=killedBlight,distance=0..1000] positioned ~ 230 ~ if entity @e[tag=!notick,type=marker,tag=spinner,distance=0..10] run tag @s add spawned