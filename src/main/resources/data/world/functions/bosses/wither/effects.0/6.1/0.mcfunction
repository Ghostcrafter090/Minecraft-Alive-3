




execute at @s if entity @p[distance=0..20] run data modify entity @s Brain.memories.minecraft:angry_at.value set from entity @p UUID
execute at @s unless entity @p[distance=0..20] run data modify entity @s Brain.memories.minecraft:angry_at.value set from entity @e[tag=!notick,sort=nearest,limit=1,type=!piglin,type=!marker] UUID
data merge entity @s {Attributes:[{Name:generic.follow_range,Base:600}]}
data modify entity @s Brain.memories.minecraft:angry_at.value.ttl set value 600L