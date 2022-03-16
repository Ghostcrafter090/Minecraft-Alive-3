#disease
#define
scoreboard objectives add slow_minact_tier dummy
scoreboard objectives add slow_boolean dummy
scoreboard objectives add slow_max_tier dummy
scoreboard objectives add minf_minact_tier dummy
scoreboard objectives add minf_boolean dummy
scoreboard objectives add minf_max_tier dummy
scoreboard objectives add nau_minact_tier dummy
scoreboard objectives add nau_boolean dummy
scoreboard objectives add nau_max_tier dummy
scoreboard objectives add blin_minact_tier dummy
scoreboard objectives add blin_boolean dummy
scoreboard objectives add blin_max_tier dummy
scoreboard objectives add hung_minact_tier dummy
scoreboard objectives add hung_boolean dummy
scoreboard objectives add hung_max_tier dummy
scoreboard objectives add weak_minact_tier dummy
scoreboard objectives add weak_boolean dummy
scoreboard objectives add weak_max_tier dummy
scoreboard objectives add poi_minact_tier dummy
scoreboard objectives add poi_boolean dummy
scoreboard objectives add poi_max_tier dummy
scoreboard objectives add with_minact_tier dummy
scoreboard objectives add with_boolean dummy
scoreboard objectives add with_max_tier dummy
scoreboard objectives add DB dummy
scoreboard objectives add DT dummy
scoreboard objectives add DI dummy
scoreboard objectives add AT dummy

#effects
execute as @a at @s if entity @e[distance=0..80,scores={DB=1..2,slow_boolean=1..1}] run function world:effects/disease/effecttypes/true/slowness
execute as @a at @s if entity @e[distance=0..80,scores={DB=1..2,minf_boolean=1..1}] run function world:effects/disease/effecttypes/true/miningfat
execute as @a at @s if entity @e[distance=0..80,scores={DB=1..2,nau_boolean=1..1}] run function world:effects/disease/effecttypes/true/nausea
execute as @a at @s if entity @e[distance=0..80,scores={DB=1..2,blin_boolean=1..1}] run function world:effects/disease/effecttypes/true/blindness
execute as @a at @s if entity @e[distance=0..80,scores={DB=1..2,hung_boolean=1..1}] run function world:effects/disease/effecttypes/true/hunger
execute as @a at @s if entity @e[distance=0..80,scores={DB=1..2,weak_boolean=1..1}] run function world:effects/disease/effecttypes/true/weakness
execute as @a at @s if entity @e[distance=0..80,scores={DB=1..2,poi_boolean=1..1}] run function world:effects/disease/effecttypes/true/poison
execute as @a at @s if entity @e[distance=0..80,scores={DB=1..2,with_boolean=1..1}] run function world:effects/disease/effecttypes/true/wither
execute as @a[gamemode=creative] run scoreboard players set @s DB 0
execute as @a[gamemode=creative] run scoreboard players set @s DT -25