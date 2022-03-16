execute if entity @a[scores={reguz=4..4}] if entity @e[type=wither_skeleton] run function world:effects/disease/spreaders/witherskele
execute if entity @a[scores={reguz=4..4}] if entity @e[type=piglin] run function world:effects/disease/spreaders/zombiepig
execute if entity @a[scores={reguz=4..4}] if entity @e[type=zombie_villager] run function world:effects/disease/spreaders/zombievill

scoreboard objectives add GT dummy
execute as @a at @s as @e[distance=0..80,type=horse] at @s if entity @e[type=horse,distance=1..2] run scoreboard players add @e[type=horse,distance=0..2] GT 5
execute as @a at @s as @e[distance=0..80,type=donkey] at @s if entity @e[type=donkey,distance=1..2] run scoreboard players add @e[type=donkey,distance=0..2] GT 5
execute as @a at @s as @e[distance=0..80,type=sheep] at @s if entity @e[type=sheep,distance=1..2] run scoreboard players add @e[type=sheep,distance=0..2] GT 5
execute as @a at @s as @e[distance=0..80,type=cow] at @s if entity @e[type=cow,distance=1..2] run scoreboard players add @e[type=cow,distance=0..2] GT 5
execute as @a at @s as @e[distance=0..80,type=mooshroom] at @s if entity @e[type=mooshroom,distance=1..2] run scoreboard players add @e[type=mooshroom,distance=0..2] GT 5
execute as @a at @s as @e[distance=0..80,type=pig] at @s if entity @e[type=pig,distance=1..2] run scoreboard players add @e[type=pig,distance=0..2] GT 5
execute as @a at @s as @e[distance=0..80,type=chicken] at @s if entity @e[type=chicken,distance=1..2] run scoreboard players add @e[type=chicken,distance=0..2] GT 5
execute as @a at @s as @e[distance=0..80,type=wolf] at @s if entity @e[type=wolf,distance=1..2] run scoreboard players add @e[type=wolf,distance=0..2] GT 5
execute as @a at @s as @e[distance=0..80,type=cat] at @s if entity @e[type=cat,distance=1..2] run scoreboard players add @e[type=cat,distance=0..2] GT 5
execute as @a at @s as @e[distance=0..80,type=ocelot] at @s if entity @e[type=ocelot,distance=1..2] run scoreboard players add @e[type=ocelot,distance=0..2] GT 5
execute as @a at @s as @e[distance=0..80,type=rabbit] at @s if entity @e[type=rabbit,distance=1..2] run scoreboard players add @e[type=rabbit,distance=0..2] GT 5
execute as @a at @s as @e[distance=0..80,type=llama] at @s if entity @e[type=llama,distance=1..2] run scoreboard players add @e[type=llama,distance=0..2] GT 5
execute as @a at @s as @e[distance=0..80,type=trader_llama] at @s if entity @e[type=trader_llama,distance=1..2] run scoreboard players add @e[type=trader_llama,distance=0..2] GT 5
execute as @a at @s as @e[distance=0..80,type=fox] at @s if entity @e[type=fox,distance=1..2] run scoreboard players add @e[type=fox,distance=0..2] GT 5
execute as @a at @s as @e[distance=0..80,type=mule] at @s if entity @e[type=mule,distance=1..2] run scoreboard players add @e[type=mule,distance=0..2] GT 5
execute as @a at @s as @e[distance=0..80,type=turtle] at @s if entity @e[type=turtle,distance=1..2] run scoreboard players add @e[type=turtle,distance=0..2] GT 5
execute as @a at @s as @e[distance=0..80,type=villager] at @s if entity @e[type=villager,distance=1..2] run scoreboard players add @e[type=villager,distance=0..2] GT 5
execute as @a at @s as @e[distance=0..80,scores={GT=10000..}] run data merge entity @s {InLove:600}
execute as @a at @s as @e[distance=0..80,scores={GT=10001..}] run scoreboard players set @s GT 0