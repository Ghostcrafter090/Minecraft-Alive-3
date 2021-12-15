# Regulated Code
execute if entity @a[scores={regulate=1..1}] run function world:mothernature/blockdecay/sec5/parta
execute if entity @a[scores={regulate=0..0}] run function world:mothernature/blockdecay/sec5/partb

# Unregulated Code
execute at @e[name=derp] run fill ~ ~-1 ~ ~ ~-1 ~ mca:humus replace oak_slab
execute at @e[name=derp] run fill ~ ~-1 ~ ~ ~-1 ~ mca:humus replace dark_oak_slab
execute at @e[name=derp] run fill ~ ~-1 ~ ~ ~-1 ~ mca:humus replace jungle_slab
execute at @e[name=derp] run fill ~ ~-1 ~ ~ ~-1 ~ mca:humus replace spruce_slab
execute at @e[name=derp] run fill ~ ~-1 ~ ~ ~-1 ~ mca:humus replace birch_slab
execute at @e[name=derp] run fill ~ ~-1 ~ ~ ~-1 ~ mca:humus replace acacia_slab
execute at @e[name=derp] run fill ~ ~-2 ~ ~ ~-2 ~ mca:humus replace oak_slab
execute at @e[name=derp] run fill ~ ~-2 ~ ~ ~-2 ~ mca:humus replace dark_oak_slab
execute at @e[name=derp] run fill ~ ~-2 ~ ~ ~-2 ~ mca:humus replace jungle_slab
execute at @e[name=derp] run fill ~ ~-2 ~ ~ ~-2 ~ mca:humus replace spruce_slab
execute at @e[name=derp] run fill ~ ~-2 ~ ~ ~-2 ~ mca:humus replace birch_slab
execute at @e[name=derp] run fill ~ ~-2 ~ ~ ~-2 ~ mca:humus replace acacia_slab
execute at @e[name=derp] run fill ~ ~-1 ~ ~ ~-1 ~ terracotta replace brick_slab
execute at @e[name=derp] run fill ~ ~-2 ~ ~ ~-2 ~ terracotta replace brick_slab
execute at @e[name=derp] run fill ~ ~-1 ~ ~ ~-1 ~ mca:humus replace oak_stairs
execute at @e[name=derp] run fill ~ ~-1 ~ ~ ~-1 ~ mca:humus replace dark_oak_stairs
execute at @e[name=derp] run fill ~ ~-1 ~ ~ ~-1 ~ mca:humus replace jungle_stairs
execute at @e[name=derp] run fill ~ ~-1 ~ ~ ~-1 ~ mca:humus replace spruce_stairs
execute at @e[name=derp] run fill ~ ~-1 ~ ~ ~-1 ~ mca:humus replace birch_stairs
execute at @e[name=derp] run fill ~ ~-1 ~ ~ ~-1 ~ mca:humus replace acacia_stairs
execute at @e[name=derp] run fill ~ ~-2 ~ ~ ~-2 ~ mca:humus replace oak_stairs
execute at @e[name=derp] run fill ~ ~-2 ~ ~ ~-2 ~ mca:humus replace dark_oak_stairs
execute at @e[name=derp] run fill ~ ~-2 ~ ~ ~-2 ~ mca:humus replace jungle_stairs
execute at @e[name=derp] run fill ~ ~-2 ~ ~ ~-2 ~ mca:humus replace spruce_stairs
execute at @e[name=derp] run fill ~ ~-2 ~ ~ ~-2 ~ mca:humus replace birch_stairs
execute at @e[name=derp] run fill ~ ~-2 ~ ~ ~-2 ~ mca:humus replace acacia_stairs
scoreboard objectives add td dummy
scoreboard objectives add sapkill dummy
scoreboard players add @a sapkill 1
execute if entity @a[scores={sapkill=500..}] at @a run kill @e[distance=15..,type=item,nbt={Item:{id:"minecraft:oak_sapling",Count:1b}}]
execute if entity @a[scores={sapkill=500..}] at @a run kill @e[distance=15..,type=item,nbt={Item:{id:"minecraft:dark_oak_sapling",Count:1b}}]
execute if entity @a[scores={sapkill=500..}] at @a run kill @e[distance=15..,type=item,nbt={Item:{id:"minecraft:acacia_sapling",Count:1b}}]
execute if entity @a[scores={sapkill=500..}] at @a run kill @e[distance=15..,type=item,nbt={Item:{id:"minecraft:spruce_sapling",Count:1b}}]
execute if entity @a[scores={sapkill=500..}] at @a run kill @e[distance=15..,type=item,nbt={Item:{id:"minecraft:jungle_sapling",Count:1b}}]
execute if entity @a[scores={sapkill=500..}] at @a run kill @e[distance=15..,type=item,nbt={Item:{id:"minecraft:birch_sapling",Count:1b}}]
execute if entity @a[scores={sapkill=500..}] at @a run kill @e[distance=15..,type=item,nbt={Item:{id:"minecraft:stick",Count:1b}}]
execute if entity @a[scores={sapkill=501..}] run scoreboard players set @a sapkill 0