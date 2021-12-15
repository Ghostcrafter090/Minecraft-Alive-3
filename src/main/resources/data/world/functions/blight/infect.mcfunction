data merge entity @s {CustomNameVisible:0b,PersistenceRequired:1b,Tags:["blight"],CustomName:'{"text":"blight_creature"}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:9408399}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:9408399}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9408399}}},{id:"minecraft:light_gray_concrete",Count:1b}],ActiveEffects:[{Id:10b,Amplifier:20b,Duration:11},{Id:11b,Amplifier:5b,Duration:11}],Attributes:[{Name:generic.max_health,Base:10},{Name:generic.follow_range,Base:6},{Name:generic.movement_speed,Base:1},{Name:generic.attack_damage,Base:1},{Name:generic.attack_knockback,Base:0}]}
execute at @s run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:bubble_coral[waterlogged=false] replace fern
execute at @s run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:bubble_coral[waterlogged=false] replace minecraft:bubble_coral[waterlogged=true]
execute at @s run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:fire_coral[waterlogged=false] replace large_fern
execute at @s run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 bubble_coral[waterlogged=false] replace #flowers
execute at @s run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:bubble_coral[waterlogged=false] replace fern
execute at @s run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 fire_coral_fan[waterlogged=false] replace #leaves
execute at @s run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 fire_coral_block replace #logs
execute at @s run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:horn_coral[waterlogged=false] replace grass
execute at @s run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:mycelium replace grass_block
execute at @s run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:mycelium replace podzol