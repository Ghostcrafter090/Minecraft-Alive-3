






execute at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] run particle minecraft:flame ~ ~ ~ 1 1 1 0 10 force
execute at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] if entity @e[tag=!notick,type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:wither_rose",Count:1b}}] run particle minecraft:large_smoke ~ ~ ~ 1 10 1 0.1 10 force
execute at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] if entity @e[tag=!notick,type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:totem_of_undying",Count:1b}}] run particle minecraft:enchant ~ ~ ~ 1 10 1 0.1 10 force
execute at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] if entity @e[tag=!notick,type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] run particle minecraft:reverse_portal ~ ~ ~ 1 10 1 0.1 10 force
execute at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] if entity @e[tag=!notick,type=item,limit=1,distance=0..1,nbt={Item:{id:"mca:water_key",Count:1b}}] run particle minecraft:bubble ~ ~ ~ 1 1 1 0 10 force
execute at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire[lit=true] if entity @e[tag=!notick,type=item,limit=1,distance=0..1,nbt={Item:{id:"mca:water_key",Count:1b}}] if entity @e[tag=!notick,type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:totem_of_undying",Count:1b}}] if entity @e[tag=!notick,type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:wither_rose",Count:1b}}] if entity @e[tag=!notick,type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] run scoreboard players add @s witherStartTic 1