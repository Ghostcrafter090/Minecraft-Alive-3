

execute as @e[tag=!notick,tag=!found,type=item,distance=0..10] if entity @s[nbt={Item:{id:"mca:water_key_shard",Count:1b}}] run tag @s add water_key_shard
execute as @e[tag=!notick,tag=!found,type=item,distance=0..10] if entity @s[nbt={Item:{id:"mca:fire_key_shard",Count:1b}}] run tag @s add fire_key_shard
execute as @e[tag=!notick,tag=!found,type=item,distance=0..10] if entity @s[nbt={Item:{id:"mca:defunct_end_key",Count:1b}}] run tag @s add defunct_end_key
execute as @e[tag=!notick,tag=!found,type=item,distance=0..10] if entity @s[nbt={Item:{id:"mca:fire_key",Count:1b}}] run tag @s add fire_key
execute as @e[tag=!notick,tag=!found,type=item,distance=0..10] if entity @s[nbt={Item:{id:"mca:kya_conduit",Count:1b}}] run tag @s add kya
execute as @e[tag=!notick,tag=!found,type=item,distance=0..10] unless entity @s[nbt=!{Item:{id:"mca:fire_key_shard",Count:1b}}] unless entity @s[nbt=!{Item:{id:"mca:water_key_shard",Count:1b}}] unless entity @s[nbt={Item:{id:"mca:defunct_end_key",Count:1b}}] unless entity @s[nbt={Item:{id:"mca:kya_conduit",Count:1b}}] unless entity @s[nbt={Item:{id:"mca:fire_key",Count:1b}}] run tag @s add found