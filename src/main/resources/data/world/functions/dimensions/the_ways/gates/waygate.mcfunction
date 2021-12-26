# Define
scoreboard objectives add waygatetimea dummy
scoreboard objectives add waygatetimeb dummy
scoreboard objectives add regate dummy
scoreboard objectives add regatetime dummy
scoreboard objectives add gateopen dummy

# Main
execute at @a as @e[name=waygate,type=marker,distance=0..100] at @s positioned ~-1 ~-18 ~2 if entity @e[type=item_frame,limit=1,sort=nearest,nbt={OnGround:0b,ItemDropChance:1.0f,ItemRotation:3b,Invulnerable:1b,Fixed:0b,Rotation:[90.0f,0.0f],Facing:4b,CustomName:'{"text":"waygate_leaf_loc"}',Item:{id:"minecraft:kelp",tag:{display:{Name:'{"text":"Avendesora Leaf","color":"dark_green","bold":true,"italic":true}',Lore:['{"text":"Use to unlock a waygate."}']}},Count:1b},Invisible:1b,NoGravity:1b}] unless entity @s[scores={gateopen=1..2}] run scoreboard players set @s gateopen 1
execute at @a as @e[name=waygate,type=marker,distance=0..100] at @s positioned ~-1 ~-18 ~2 if entity @e[type=item_frame,limit=1,sort=nearest,nbt={OnGround:0b,ItemDropChance:1.0f,ItemRotation:3b,Invulnerable:1b,Fixed:0b,Rotation:[90.0f,0.0f],Facing:4b,CustomName:'{"text":"waygate_leaf_loc"}',Item:{id:"minecraft:kelp",tag:{display:{Name:'{"text":"Avendesora Leaf","color":"dark_green","bold":true,"italic":true}',Lore:['{"text":"Use to unlock a waygate."}']}},Count:1b},Invisible:1b,NoGravity:1b}] if entity @s[scores={gateopen=2..2}] at @s run fill ~ ~-19 ~1 ~ ~-17 ~-1 air replace gray_stained_glass_pane
execute at @a as @e[name=waygate,type=marker,distance=0..100] at @s positioned ~-1 ~-18 ~2 if entity @e[type=item_frame,limit=1,sort=nearest,nbt={OnGround:0b,ItemDropChance:1.0f,ItemRotation:3b,Invulnerable:1b,Fixed:0b,Rotation:[90.0f,0.0f],Facing:4b,CustomName:'{"text":"waygate_leaf_loc"}',Item:{id:"minecraft:kelp",tag:{display:{Name:'{"text":"Avendesora Leaf","color":"dark_green","bold":true,"italic":true}',Lore:['{"text":"Use to unlock a waygate."}']}},Count:1b},Invisible:1b,NoGravity:1b}] if entity @s[scores={gateopen=2..2}] at @s run fill ~ ~-20 ~1 ~ ~-20 ~-1 cobblestone replace
execute at @a as @e[name=waygate,type=marker,distance=0..100] at @s positioned ~-1 ~-18 ~2 if entity @e[type=item_frame,limit=1,sort=nearest,nbt={OnGround:0b,ItemDropChance:1.0f,ItemRotation:3b,Invulnerable:1b,Fixed:0b,Rotation:[90.0f,0.0f],Facing:4b,CustomName:'{"text":"waygate_leaf_loc"}',Item:{id:"minecraft:kelp",tag:{display:{Name:'{"text":"Avendesora Leaf","color":"dark_green","bold":true,"italic":true}',Lore:['{"text":"Use to unlock a waygate."}']}},Count:1b},Invisible:1b,NoGravity:1b}] if entity @s[scores={gateopen=2..2}] at @s run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 9 2
execute at @a as @e[name=waygate,type=marker,distance=0..100] at @s positioned ~-1 ~-18 ~2 if entity @e[type=item_frame,limit=1,sort=nearest,nbt={OnGround:0b,ItemDropChance:1.0f,ItemRotation:3b,Invulnerable:1b,Fixed:0b,Rotation:[90.0f,0.0f],Facing:4b,CustomName:'{"text":"waygate_leaf_loc"}',Item:{id:"minecraft:kelp",tag:{display:{Name:'{"text":"Avendesora Leaf","color":"dark_green","bold":true,"italic":true}',Lore:['{"text":"Use to unlock a waygate."}']}},Count:1b},Invisible:1b,NoGravity:1b}] if entity @s[scores={gateopen=2..2}] run scoreboard players set @s gateopen 0
execute at @a as @e[name=waygate,type=marker,distance=0..100] at @s positioned ~-1 ~-18 ~2 if entity @e[type=item_frame,limit=1,sort=nearest,nbt={OnGround:0b,ItemDropChance:1.0f,ItemRotation:3b,Invulnerable:1b,Fixed:0b,Rotation:[90.0f,0.0f],Facing:4b,CustomName:'{"text":"waygate_leaf_loc"}',Item:{id:"minecraft:kelp",tag:{display:{Name:'{"text":"Avendesora Leaf","color":"dark_green","bold":true,"italic":true}',Lore:['{"text":"Use to unlock a waygate."}']}},Count:1b},Invisible:1b,NoGravity:1b}] run data merge entity @e[type=item_frame,limit=1,sort=nearest] {OnGround:0b,ItemDropChance:1.0f,ItemRotation:0b,Invulnerable:1b,Fixed:0b,Rotation:[90.0f,0.0f],Facing:4b,CustomName:'{"text":"waygate_leaf_loc"}',Item:{id:"minecraft:kelp",tag:{display:{Name:'{"text":"Avendesora Leaf","color":"dark_green","bold":true,"italic":true}',Lore:['{"text":"Use to unlock a waygate."}']}},Count:1b},Invisible:1b,NoGravity:1b}
execute as @e[name=waygate,type=marker,scores={gateopen=1..2},limit=5,sort=random] at @s run fill ~ ~-19 ~1 ~ ~-17 ~-1 gray_stained_glass_pane replace air
execute as @e[name=waygate,type=marker,scores={gateopen=1..2},limit=5,sort=random] at @s run fill ~ ~-20 ~1 ~ ~-20 ~-1 glowstone replace
execute as @e[name=waygate,type=marker,scores={gateopen=1..2},limit=5,sort=random] at @s positioned ~ ~-19 ~1 as @e[type=!item,type=!falling_block,distance=0..1,type=!item_frame] at @e[name=waygate,type=marker,distance=0..30] positioned ~ ~-19 ~ rotated as @s in mca:theways run tp @s ~2 ~ ~ ~ ~
execute as @e[name=waygate,type=marker,scores={gateopen=1..2},limit=5,sort=random] at @s positioned ~ ~-19 ~ as @e[type=!item,type=!falling_block,distance=0..1,type=!item_frame] at @e[name=waygate,type=marker,distance=0..30] positioned ~ ~-19 ~ rotated as @s in mca:theways run tp @s ~2 ~ ~ ~ ~
execute as @e[name=waygate,type=marker,scores={gateopen=1..2},limit=5,sort=random] at @s positioned ~ ~-19 ~-1 as @e[type=!item,type=!falling_block,distance=0..1,type=!item_frame] at @e[name=waygate,type=marker,distance=0..30] positioned ~ ~-19 ~ rotated as @s in mca:theways run tp @s ~2 ~ ~ ~ ~
execute as @e[name=waygate,type=marker,scores={gateopen=1..2},limit=5,sort=random] at @s positioned ~ ~-18 ~1 as @e[type=!item,type=!falling_block,distance=0..1,type=!item_frame] at @e[name=waygate,type=marker,distance=0..30] positioned ~ ~-19 ~ rotated as @s in mca:theways run tp @s ~2 ~ ~ ~ ~
execute as @e[name=waygate,type=marker,scores={gateopen=1..2},limit=5,sort=random] at @s positioned ~ ~-18 ~ as @e[type=!item,type=!falling_block,distance=0..1,type=!item_frame] at @e[name=waygate,type=marker,distance=0..30] positioned ~ ~-19 ~ rotated as @s in mca:theways run tp @s ~2 ~ ~ ~ ~
execute as @e[name=waygate,type=marker,scores={gateopen=1..2},limit=5,sort=random] at @s positioned ~ ~-18 ~-1 as @e[type=!item,type=!falling_block,distance=0..1,type=!item_frame] at @e[name=waygate,type=marker,distance=0..30] positioned ~ ~-19 ~ rotated as @s in mca:theways run tp @s ~2 ~ ~ ~ ~
execute as @e[name=waygate,type=marker,scores={gateopen=1..2},limit=5,sort=random] at @s positioned ~ ~-17 ~1 as @e[type=!item,type=!falling_block,distance=0..1,type=!item_frame] at @e[name=waygate,type=marker,distance=0..30] positioned ~ ~-19 ~ rotated as @s in mca:theways run tp @s ~2 ~ ~ ~ ~
execute as @e[name=waygate,type=marker,scores={gateopen=1..2},limit=5,sort=random] at @s positioned ~ ~-17 ~ as @e[type=!item,type=!falling_block,distance=0..1,type=!item_frame] at @e[name=waygate,type=marker,distance=0..30] positioned ~ ~-19 ~ rotated as @s in mca:theways run tp @s ~2 ~ ~ ~ ~
execute as @e[name=waygate,type=marker,scores={gateopen=1..1},limit=5,sort=random] at @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 9 0.1
execute as @e[name=waygate,type=marker,scores={gateopen=1..2}] at @s positioned ~ ~-19 ~ if entity @e[type=!item,type=!falling_block,name=dmain,scores={regu=10..}] run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 0.1 0.1
execute as @e[name=waygate,type=marker,scores={gateopen=1..2}] at @s run particle minecraft:enchant ~ ~-19 ~ 0 2 1 0.1 300 force
execute as @e[name=waygate,type=marker,scores={gateopen=1..2}] at @s run particle minecraft:portal ~ ~-19 ~ 0 2 1 0.1 30 force
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={gateopen=1..2},limit=5,sort=random] at @s run fill ~ ~-19 ~1 ~ ~-17 ~-1 gray_stained_glass_pane replace air
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={gateopen=1..2},limit=5,sort=random] at @s run fill ~ ~-20 ~1 ~ ~-20 ~-1 glowstone replace
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={gateopen=1..2},limit=5,sort=random] at @s positioned ~ ~-19 ~1 as @e[type=!item,type=!falling_block,distance=0..1,type=!item_frame] at @e[type=!item,type=!falling_block,name=waywaygate,distance=0..30] positioned ~ ~-19 ~ rotated as @s in minecraft:overworld run tp @s ~2 ~ ~ ~ ~
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={gateopen=1..2},limit=5,sort=random] at @s positioned ~ ~-19 ~ as @e[type=!item,type=!falling_block,distance=0..1,type=!item_frame] at @e[type=!item,type=!falling_block,name=waywaygate,distance=0..30] positioned ~ ~-19 ~ rotated as @s in minecraft:overworld run tp @s ~2 ~ ~ ~ ~
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={gateopen=1..2},limit=5,sort=random] at @s positioned ~ ~-19 ~-1 as @e[type=!item,type=!falling_block,distance=0..1,type=!item_frame] at @e[type=!item,type=!falling_block,name=waywaygate,distance=0..30] positioned ~ ~-19 ~ rotated as @s in minecraft:overworld run tp @s ~2 ~ ~ ~ ~
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={gateopen=1..2},limit=5,sort=random] at @s positioned ~ ~-18 ~1 as @e[type=!item,type=!falling_block,distance=0..1,type=!item_frame] at @e[type=!item,type=!falling_block,name=waywaygate,distance=0..30] positioned ~ ~-19 ~ rotated as @s in minecraft:overworld run tp @s ~2 ~ ~ ~ ~
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={gateopen=1..2},limit=5,sort=random] at @s positioned ~ ~-18 ~ as @e[type=!item,type=!falling_block,distance=0..1,type=!item_frame] at @e[type=!item,type=!falling_block,name=waywaygate,distance=0..30] positioned ~ ~-19 ~ rotated as @s in minecraft:overworld run tp @s ~2 ~ ~ ~ ~
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={gateopen=1..2},limit=5,sort=random] at @s positioned ~ ~-18 ~-1 as @e[type=!item,type=!falling_block,distance=0..1,type=!item_frame] at @e[type=!item,type=!falling_block,name=waywaygate,distance=0..30] positioned ~ ~-19 ~ rotated as @s in minecraft:overworld run tp @s ~2 ~ ~ ~ ~
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={gateopen=1..2},limit=5,sort=random] at @s positioned ~ ~-17 ~1 as @e[type=!item,type=!falling_block,distance=0..1,type=!item_frame] at @e[type=!item,type=!falling_block,name=waywaygate,distance=0..30] positioned ~ ~-19 ~ rotated as @s in minecraft:overworld run tp @s ~2 ~ ~ ~ ~
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={gateopen=1..2},limit=5,sort=random] at @s positioned ~ ~-17 ~ as @e[type=!item,type=!falling_block,distance=0..1,type=!item_frame] at @e[type=!item,type=!falling_block,name=waywaygate,distance=0..30] positioned ~ ~-19 ~ rotated as @s in minecraft:overworld run tp @s ~2 ~ ~ ~ ~
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={gateopen=1..1}] at @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 9 0.1
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={gateopen=1..2}] at @s positioned ~ ~-19 ~ if entity @e[type=!item,type=!falling_block,name=dmain,scores={regu=10..}] run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 0.1 0.1
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={gateopen=1..2}] at @s run particle minecraft:enchant ~ ~-19 ~ 0 2 1 0.1 300 force
execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={gateopen=1..2}] at @s run particle minecraft:portal ~ ~-19 ~ 0 2 1 0.1 30 force
execute as @e[name=waygate,type=marker,scores={gateopen=1..1}] at @s run scoreboard players set @s gateopen 2
execute at @a as @e[type=!item,type=!falling_block,name=waywaygate,distance=0..12] at @s in minecraft:overworld run forceload add ~ ~
execute at @a as @e[name=waygate,type=marker,distance=0..12] at @s in minecraft:overworld as @e[name=waygate,type=marker,distance=0..12] at @s run forceload add ~ ~
# execute as @e[type=!item,type=!falling_block,name=waywaygate] at @s unless entity @a[distance=0..60] in minecraft:overworld as @e[name=waygate,type=marker,distance=0..12] at @s run forceload remove ~ ~
execute as @e[type=!item,type=!falling_block,name=waywaygate] at @s positioned ~-1 ~-18 ~2 if entity @e[type=item_frame,limit=1,sort=nearest,nbt={OnGround:0b,ItemDropChance:1.0f,ItemRotation:3b,Invulnerable:1b,Fixed:0b,Rotation:[90.0f,0.0f],Facing:4b,CustomName:'{"text":"waygate_leaf_loc"}',Item:{id:"minecraft:kelp",tag:{display:{Name:'{"text":"Avendesora Leaf","color":"dark_green","bold":true,"italic":true}',Lore:['{"text":"Use to unlock a waygate."}']}},Count:1b},Invisible:1b,NoGravity:1b}] at @s in minecraft:overworld as @e[name=waygate,type=marker,distance=0..12] at @s unless entity @s[scores={gateopen=1..2}] run scoreboard players set @s gateopen 1
execute as @e[type=!item,type=!falling_block,name=waywaygate] at @s positioned ~-1 ~-18 ~2 if entity @e[type=item_frame,limit=1,sort=nearest,nbt={OnGround:0b,ItemDropChance:1.0f,ItemRotation:3b,Invulnerable:1b,Fixed:0b,Rotation:[90.0f,0.0f],Facing:4b,CustomName:'{"text":"waygate_leaf_loc"}',Item:{id:"minecraft:kelp",tag:{display:{Name:'{"text":"Avendesora Leaf","color":"dark_green","bold":true,"italic":true}',Lore:['{"text":"Use to unlock a waygate."}']}},Count:1b},Invisible:1b,NoGravity:1b}] at @s in minecraft:overworld as @e[name=waygate,type=marker,distance=0..12] at @s if entity @s[scores={gateopen=2..2}] run scoreboard players set @s gateopen 0
# execute as @e[type=!item,type=!falling_block,name=waywaygate,scores={gateopen=1..1}] at @s in minecraft:overworld at @e[name=waygate,type=marker,distance=0..12] run scoreboard players set @e[name=waygate,type=marker,distance=0..12] gateopen 1
execute as @e[type=!item,type=!falling_block,name=waywaygate] at @s in minecraft:overworld at @e[name=waygate,type=marker,distance=0..12] run scoreboard players operation @s gateopen = @e[name=waygate,type=marker,distance=0..12] gateopen
execute as @e[type=!item,type=!falling_block,name=waywaygate] at @s positioned ~-1 ~-18 ~2 if entity @e[type=item_frame,limit=1,sort=nearest,nbt={OnGround:0b,ItemDropChance:1.0f,ItemRotation:3b,Invulnerable:1b,Fixed:0b,Rotation:[90.0f,0.0f],Facing:4b,CustomName:'{"text":"waygate_leaf_loc"}',Item:{id:"minecraft:kelp",tag:{display:{Name:'{"text":"Avendesora Leaf","color":"dark_green","bold":true,"italic":true}',Lore:['{"text":"Use to unlock a waygate."}']}},Count:1b},Invisible:1b,NoGravity:1b}] run data merge entity @e[type=item_frame,limit=1,sort=nearest] {OnGround:0b,ItemDropChance:1.0f,ItemRotation:0b,Invulnerable:1b,Fixed:0b,Rotation:[90.0f,0.0f],Facing:4b,CustomName:'{"text":"waygate_leaf_loc"}',Item:{id:"minecraft:kelp",tag:{display:{Name:'{"text":"Avendesora Leaf","color":"dark_green","bold":true,"italic":true}',Lore:['{"text":"Use to unlock a waygate."}']}},Count:1b},Invisible:1b,NoGravity:1b}

execute as @e[name=waygate,type=marker] at @s if block ~ ~-19 ~ nether_bricks if block ~ ~-18 ~ nether_bricks if block ~ ~-18 ~1 nether_bricks if block ~ ~-18 ~-1 nether_bricks if block ~ ~-17 ~ minecraft:player_head{SkullOwner:{Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTc2MWEzODMxNTkyZWU0YTA4ZmYwOWQ3NTdlZDgyZWM5YjBmZDhhZGI3ZWY4MmRhMmI2ODZjM2M5YzY2ZWEifX19"}]}}} if block ~ ~-19 ~1 torch if block ~ ~-19 ~-1 torch positioned ~-1 ~-18 ~1 if entity @e[type=item_frame] run scoreboard players set @s regate 1
execute if entity @e[name=waygate,type=marker,scores={regate=1..1}] run function world:dimensions/the_ways/gates/wayspell
execute as @e[type=!item,type=!falling_block,name=waywaygate] at @s if block ~ ~-19 ~ nether_bricks if block ~ ~-18 ~ nether_bricks if block ~ ~-18 ~1 nether_bricks if block ~ ~-18 ~-1 nether_bricks if block ~ ~-17 ~ minecraft:player_head{SkullOwner:{Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTc2MWEzODMxNTkyZWU0YTA4ZmYwOWQ3NTdlZDgyZWM5YjBmZDhhZGI3ZWY4MmRhMmI2ODZjM2M5YzY2ZWEifX19"}]}}} if block ~ ~-19 ~1 torch if block ~ ~-19 ~-1 torch positioned ~-1 ~-18 ~1 if entity @e[type=item_frame] run scoreboard players set @s regate 1
