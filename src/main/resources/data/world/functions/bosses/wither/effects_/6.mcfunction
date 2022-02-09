
execute as @e[type=piglin,limit=1,sort=random] at @s if entity @p[distance=0..20] run data modify entity @s Brain.memories.minecraft:angry_at.value set from entity @p UUID
execute as @e[type=piglin,limit=1,sort=random] at @s unless entity @p[distance=0..20] run data modify entity @s Brain.memories.minecraft:angry_at.value set from entity @e[sort=nearest,limit=1,type=!piglin,type=!marker] UUID
execute as @e[type=piglin,limit=1,sort=random] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:600}]}
execute as @e[type=piglin,limit=1,sort=random] run data modify entity @s Brain.memories.minecraft:angry_at.value.ttl set value 600L