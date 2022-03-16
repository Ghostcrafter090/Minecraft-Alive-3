# Inside End Effects
execute in minecraft:the_end as @a[distance=0..2000] run effect give @s minecraft:hunger 10 10
execute as @a at @s if block ~ ~-1 ~ minecraft:end_portal run tp @s ~ ~3 ~
execute as @a at @s if block ~ ~-1 ~ minecraft:end_portal run playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.1
execute in minecraft:the_end as @a[distance=0..2000] as @e[type=enderman] at @s facing entity @p eyes run tp @s ^ ^ ^0.5 ~ ~
execute in minecraft:the_end as @a[distance=0..2000] run effect give @s minecraft:blindness 10 10
execute in minecraft:the_end as @a[distance=0..2000] as @e[type=enderman] at @s facing entity @p eyes run playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.1
execute in minecraft:the_end as @a[distance=0..2000] run effect give @s minecraft:slowness 10 10
execute in minecraft:the_end as @a[distance=0..2000] run effect give @s minecraft:mining_fatigue 10 10
execute in minecraft:the_end as @a[distance=0..2000] run effect give @s minecraft:weakness 10 10

# Eye of ender effects
execute as @e[type=minecraft:eye_of_ender] run tellraw @a ["",{"selector":"[@s]","color":"green","hoverEvent":{"action":"show_text","contents":"To be able to defeat the Ender Dragon, go to a village and talk to a curious trader."}},{"text":" *Psssst* Eye don't reccomend that!","color":"green","hoverEvent":{"action":"show_text","contents":"To be able to defeat the Ender Dragon, go to a village and talk to a curious trader."}}]
execute as @e[type=minecraft:eye_of_ender] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 1 50 force
execute as @e[type=minecraft:eye_of_ender] at @s run playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1
execute as @e[type=minecraft:eye_of_ender] at @s run give @p minecraft:ender_eye 1
execute as @e[type=minecraft:eye_of_ender] at @s run kill @s