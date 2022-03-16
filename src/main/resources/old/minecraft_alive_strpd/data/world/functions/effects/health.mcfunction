#define
scoreboard objectives add health health
scoreboard objectives add hwait dummy

#effects
effect give @a[scores={health=0..5}] weakness 4 0
effect give @a[scores={health=0..4}] weakness 4 0
effect give @a[scores={health=0..4}] mining_fatigue 4 0
effect give @a[scores={health=0..3}] weakness 4 1
effect give @a[scores={health=0..3}] mining_fatigue 4 0
effect give @a[scores={health=0..3}] slowness 4 0
effect give @a[scores={health=0..2}] weakness 4 1
effect give @a[scores={health=0..2}] mining_fatigue 4 1
effect give @a[scores={health=0..2}] slowness 4 0
effect give @a[scores={health=0..1}] weakness 4 1
effect give @a[scores={health=0..1}] mining_fatigue 4 1
effect give @a[scores={health=0..1}] slowness 4 1
effect give @a[scores={health=0..1,hwait=3000..}] poison 100 0
scoreboard players set @a[scores={health=0..1,hwait=3000..}] hwait 0
scoreboard players add @a hwait 1
execute as @a[scores={health=0..2}] run scoreboard players set @s DB 1
execute as @a[scores={health=0..2}] run scoreboard players set @s nau_boolean 1
execute as @a[scores={health=0..2}] run scoreboard players set @s nau_max_tier 3
execute as @a[scores={health=0..2}] run scoreboard players set @s nau_minact_tier 1
execute as @a[scores={health=..5}] run scoreboard players remove @s stamina 1
execute as @a[scores={health=..3}] run scoreboard players remove @s stamina 1
execute as @a[scores={health=..2}] run scoreboard players remove @s stamina 1
execute as @a[scores={health=..1}] run scoreboard players remove @s stamina 1




