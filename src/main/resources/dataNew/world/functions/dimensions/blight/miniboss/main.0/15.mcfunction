





execute at @s if entity @s[scores={hurttime=1..}] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 20 0.1
execute at @s if entity @s[scores={hurttime=1..}] run particle minecraft:falling_lava ~ ~ ~ 20 20 20 2 100 force
execute at @s if entity @s[scores={hurttime=1..}] run particle dust 1.0 0.0 0.0 2.0 ~ ~ ~ 20 20 20 2 100 force
execute at @s if entity @s[scores={hurttime=1..}] run effect give @a[distance=0..300] minecraft:nausea 4 5