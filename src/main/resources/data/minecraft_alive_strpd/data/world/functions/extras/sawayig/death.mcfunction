
execute as @e[tag=sawayig,scores={healthb=20..}] at @s run particle minecraft:ash ~ ~ ~ 1 1 1 1 10 force
execute as @e[tag=sawayig,scores={healthb=40..}] at @s run particle minecraft:ash ~ ~ ~ 1 1 1 1 20 force
execute as @e[tag=sawayig,scores={healthb=60..}] at @s run particle minecraft:ash ~ ~ ~ 1 1 1 1 40 force
execute as @e[tag=sawayig,scores={healthb=80..}] at @s run particle minecraft:ash ~ ~ ~ 1 1 1 1 80 force
execute as @e[tag=sawayig,scores={healthb=100..}] at @s run particle minecraft:ash ~ ~ ~ 1 1 1 1 160 force
execute as @e[tag=sawayig,scores={healthb=120..}] at @s run particle minecraft:ash ~ ~ ~ 1 1 1 1 320 force
execute as @e[tag=sawayig,scores={healthb=200..}] run function minecraft_alive_strpd:data/world/functions/extras/sawayig/death_/6
execute as @e[scores={healthb=0..}] run function minecraft_alive_strpd:data/world/functions/extras/sawayig/death_/7
execute as @e[tag=sawayig,scores={healthb=200..}] run function minecraft_alive_strpd:data/world/functions/extras/sawayig/death_/8
execute as @e[tag=sawayig,scores={healthb=160..}] at @s run particle minecraft:ash ~ ~ ~ 1 1 1 1 10 force
execute as @e[tag=sawayig,scores={healthb=180..}] at @s run particle minecraft:ash ~ ~ ~ 1 1 1 1 10 force
execute as @e[tag=sawayig,scores={healthb=200..}] at @s run particle minecraft:ash ~ ~ ~ 1 1 1 1 10 force
execute as @e[tag=sawayig,scores={healthb=220..}] at @s run particle minecraft:ash ~ ~ ~ 1 1 1 1 10 force
execute as @e[tag=sawayig,scores={healthb=240..}] at @s run particle minecraft:ash ~ ~ ~ 1 1 1 1 10 force
execute as @e[tag=sawayig,scores={healthb=260..}] at @s run particle minecraft:ash ~ ~ ~ 1 1 1 1 10 force
execute as @e[tag=sawayig,scores={healthb=280..}] at @s run particle minecraft:ash ~ ~ ~ 1 1 1 1 10 force
execute as @e[tag=sawayig,scores={healthb=300..}] at @s run particle minecraft:ash ~ ~ ~ 1 1 1 1 10 force
execute as @e[tag=sawayig,scores={healthb=320..}] at @s run particle minecraft:ash ~ ~ ~ 1 1 1 1 10 force
execute as @e[tag=sawayig,scores={healthb=340..}] at @s run particle minecraft:ash ~ ~ ~ 1 1 1 1 10 force
execute as @e[tag=sawayig,scores={healthb=360..}] at @s run particle minecraft:ash ~ ~ ~ 1 1 1 1 10 force
execute as @e[tag=sawayig,scores={healthb=380..}] at @s run particle minecraft:ash ~ ~ ~ 1 1 1 1 10 force
execute as @e[tag=sawayig,scores={healthb=20..}] run effect give @s glowing 10 1
execute as @e[tag=sawayig,scores={healthb=40..}] run effect give @s glowing 10 2
execute as @e[tag=sawayig,scores={healthb=60..}] run effect give @s glowing 10 4
execute as @e[tag=sawayig,scores={healthb=80..}] run effect give @s glowing 10 8
execute as @e[tag=sawayig,scores={healthb=100..}] run effect give @s glowing 10 16
execute as @e[tag=sawayig,scores={healthb=120..}] run effect give @s glowing 10 32
execute as @e[tag=sawayig,scores={healthb=140..}] run effect give @s glowing 10 64
execute as @e[tag=sawayig,scores={healthb=20..20}] at @s run playsound minecraft:ambient.nether_wastes.mood master @a ~ ~ ~ 0.1
execute as @e[tag=sawayig,scores={healthb=40..42}] at @s run playsound minecraft:ambient.nether_wastes.mood master @a ~ ~ ~ 0.2
execute as @e[tag=sawayig,scores={healthb=60..64}] at @s run playsound minecraft:ambient.nether_wastes.mood master @a ~ ~ ~ 0.3
execute as @e[tag=sawayig,scores={healthb=80..88}] at @s run playsound minecraft:ambient.nether_wastes.mood master @a ~ ~ ~ 0.4
execute as @e[tag=sawayig,scores={healthb=100..116}] at @s run playsound minecraft:ambient.nether_wastes.mood master @a ~ ~ ~ 0.5
execute as @e[tag=sawayig,scores={healthb=120..152}] at @s run playsound minecraft:ambient.nether_wastes.mood master @a ~ ~ ~ 0.6
execute as @e[tag=sawayig,scores={healthb=140..400}] at @s run playsound minecraft:ambient.nether_wastes.mood master @a ~ ~ ~ 0.7
execute as @e[tag=sawayig,scores={healthb=200..}] at @s run playsound entity.enderman.stare master @a ~ ~ ~ 2.0 0.1
execute as @e[tag=sawayig,scores={healthb=300..}] run kill @s