

execute at @s if entity @e[tag=!notick,type=minecraft:potion,nbt={Item:{tag:{Potion:"minecraft:water_breathing"}}},distance=0..3] run tag @s add blight
execute at @s if entity @e[tag=!notick,type=minecraft:potion,nbt={Item:{tag:{Potion:"minecraft:long_water_breathing"}}},distance=0..3] run tag @s add blight