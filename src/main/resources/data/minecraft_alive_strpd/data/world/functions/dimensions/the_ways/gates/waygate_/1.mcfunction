
execute as @e[name=waygate,distance=0..100] at @s positioned ~-1 ~-18 ~2 if entity @e[type=item_frame,limit=1,sort=nearest,nbt={Paper.SpawnReason:"DEFAULT",Bukkit.updateLevel:2,OnGround:0b,ItemDropChance:1.0f,ItemRotation:3b,Invulnerable:1b,Fixed:0b,Rotation:[90.0f,0.0f],Facing:4b,CustomName:'{"text":"waygate_leaf_loc"}',Item:{id:"minecraft:kelp",tag:{display:{Name:'{"text":"Avendesora Leaf","color":"dark_green","bold":true,"italic":true}',Lore:['{"text":"Use to unlock a waygate."}']}},Count:1b},Invisible:1b,Air:0s,FallDistance:0.0f,NoGravity:1b,Motion:[0.0d,0.0d,0.0d],Fire:0s,PortalCooldown:0}] unless entity @s[scores={gateopen=1..2}] run scoreboard players set @s gateopen 1
execute as @e[name=waygate,distance=0..100] at @s positioned ~-1 ~-18 ~2 if entity @e[type=item_frame,limit=1,sort=nearest,nbt={Paper.SpawnReason:"DEFAULT",Bukkit.updateLevel:2,OnGround:0b,ItemDropChance:1.0f,ItemRotation:3b,Invulnerable:1b,Fixed:0b,Rotation:[90.0f,0.0f],Facing:4b,CustomName:'{"text":"waygate_leaf_loc"}',Item:{id:"minecraft:kelp",tag:{display:{Name:'{"text":"Avendesora Leaf","color":"dark_green","bold":true,"italic":true}',Lore:['{"text":"Use to unlock a waygate."}']}},Count:1b},Invisible:1b,Air:0s,FallDistance:0.0f,NoGravity:1b,Motion:[0.0d,0.0d,0.0d],Fire:0s,PortalCooldown:0}] if entity @s[scores={gateopen=2..2}] at @s run fill ~ ~-19 ~1 ~ ~-17 ~-1 air replace gray_stained_glass_pane
execute as @e[name=waygate,distance=0..100] at @s positioned ~-1 ~-18 ~2 if entity @e[type=item_frame,limit=1,sort=nearest,nbt={Paper.SpawnReason:"DEFAULT",Bukkit.updateLevel:2,OnGround:0b,ItemDropChance:1.0f,ItemRotation:3b,Invulnerable:1b,Fixed:0b,Rotation:[90.0f,0.0f],Facing:4b,CustomName:'{"text":"waygate_leaf_loc"}',Item:{id:"minecraft:kelp",tag:{display:{Name:'{"text":"Avendesora Leaf","color":"dark_green","bold":true,"italic":true}',Lore:['{"text":"Use to unlock a waygate."}']}},Count:1b},Invisible:1b,Air:0s,FallDistance:0.0f,NoGravity:1b,Motion:[0.0d,0.0d,0.0d],Fire:0s,PortalCooldown:0}] if entity @s[scores={gateopen=2..2}] at @s run fill ~ ~-20 ~1 ~ ~-20 ~-1 cobblestone replace
execute as @e[name=waygate,distance=0..100] at @s positioned ~-1 ~-18 ~2 if entity @e[type=item_frame,limit=1,sort=nearest,nbt={Paper.SpawnReason:"DEFAULT",Bukkit.updateLevel:2,OnGround:0b,ItemDropChance:1.0f,ItemRotation:3b,Invulnerable:1b,Fixed:0b,Rotation:[90.0f,0.0f],Facing:4b,CustomName:'{"text":"waygate_leaf_loc"}',Item:{id:"minecraft:kelp",tag:{display:{Name:'{"text":"Avendesora Leaf","color":"dark_green","bold":true,"italic":true}',Lore:['{"text":"Use to unlock a waygate."}']}},Count:1b},Invisible:1b,Air:0s,FallDistance:0.0f,NoGravity:1b,Motion:[0.0d,0.0d,0.0d],Fire:0s,PortalCooldown:0}] if entity @s[scores={gateopen=2..2}] at @s run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 9 2
execute as @e[name=waygate,distance=0..100] at @s positioned ~-1 ~-18 ~2 if entity @e[type=item_frame,limit=1,sort=nearest,nbt={Paper.SpawnReason:"DEFAULT",Bukkit.updateLevel:2,OnGround:0b,ItemDropChance:1.0f,ItemRotation:3b,Invulnerable:1b,Fixed:0b,Rotation:[90.0f,0.0f],Facing:4b,CustomName:'{"text":"waygate_leaf_loc"}',Item:{id:"minecraft:kelp",tag:{display:{Name:'{"text":"Avendesora Leaf","color":"dark_green","bold":true,"italic":true}',Lore:['{"text":"Use to unlock a waygate."}']}},Count:1b},Invisible:1b,Air:0s,FallDistance:0.0f,NoGravity:1b,Motion:[0.0d,0.0d,0.0d],Fire:0s,PortalCooldown:0}] if entity @s[scores={gateopen=2..2}] run scoreboard players set @s gateopen 0
execute as @e[name=waygate,distance=0..100] at @s positioned ~-1 ~-18 ~2 if entity @e[type=item_frame,limit=1,sort=nearest,nbt={Paper.SpawnReason:"DEFAULT",Bukkit.updateLevel:2,OnGround:0b,ItemDropChance:1.0f,ItemRotation:3b,Invulnerable:1b,Fixed:0b,Rotation:[90.0f,0.0f],Facing:4b,CustomName:'{"text":"waygate_leaf_loc"}',Item:{id:"minecraft:kelp",tag:{display:{Name:'{"text":"Avendesora Leaf","color":"dark_green","bold":true,"italic":true}',Lore:['{"text":"Use to unlock a waygate."}']}},Count:1b},Invisible:1b,Air:0s,FallDistance:0.0f,NoGravity:1b,Motion:[0.0d,0.0d,0.0d],Fire:0s,PortalCooldown:0}] run data merge entity @e[type=item_frame,limit=1,sort=nearest] {Paper.SpawnReason:"DEFAULT",Bukkit.updateLevel:2,OnGround:0b,ItemDropChance:1.0f,ItemRotation:0b,Invulnerable:1b,Fixed:0b,Rotation:[90.0f,0.0f],Facing:4b,CustomName:'{"text":"waygate_leaf_loc"}',Item:{id:"minecraft:kelp",tag:{display:{Name:'{"text":"Avendesora Leaf","color":"dark_green","bold":true,"italic":true}',Lore:['{"text":"Use to unlock a waygate."}']}},Count:1b},Invisible:1b,Air:0s,FallDistance:0.0f,NoGravity:1b,Motion:[0.0d,0.0d,0.0d],Fire:0s,PortalCooldown:0}