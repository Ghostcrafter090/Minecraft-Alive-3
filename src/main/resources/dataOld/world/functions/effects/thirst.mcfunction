#thirst
#define
scoreboard objectives add thirst dummy
scoreboard objectives add death deathCount
scoreboard objectives add treg dummy
scoreboard objectives add drink minecraft.used:minecraft.potion
scoreboard objectives add air air

#main
execute as @a unless entity @s[scores={thirst=-1000..1000}] run scoreboard players set @s thirst 100
execute as @a[scores={drink=1..,thirst=..100}] run scoreboard players add @s thirst 30
execute as @a[scores={drink=1..}] run scoreboard players set @s drink 0
# execute as @a[scores={thirst=100..}] run scoreboard players set @s thirst 100
execute as @a[scores={death=1..}] run scoreboard players set @s thirst 30
execute as @a[scores={death=1..}] run scoreboard players set @s insomnia 25000
execute as @a[scores={death=1..}] run scoreboard players set @s DB 0
execute as @a[scores={death=1..}] run scoreboard players set @s DT 0
execute as @a[scores={death=1..}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={death=1..}] run scoreboard players set @s death 0

#effects
execute as @a[scores={thirst=..20}] run effect give @s weakness 4 0
execute as @a[scores={thirst=..15}] run effect give @s weakness 4 1
execute as @a[scores={thirst=..15}] run effect give @s mining_fatigue 4 0
execute as @a[scores={thirst=..10}] run effect give @s weakness 4 1
execute as @a[scores={thirst=..10}] run effect give @s mining_fatigue 4 0
execute as @a[scores={thirst=..10}] run effect give @s weakness 4 1
execute as @a[scores={thirst=..10}] run effect give @s slowness 4 0
execute as @a[scores={thirst=..10}] run effect give @s mining_fatigue 4 0
execute as @a[scores={thirst=..10}] run effect give @s nausea 4 0
execute as @a[scores={thirst=..5}] run effect give @s nausea 4 1
execute as @a[scores={thirst=..5}] run effect give @s slowness 4 1
execute as @a[scores={thirst=..0}] run effect give @s wither 2 0
execute as @a[scores={thirst=..10,}] unless entity @s[scores={DB=1..2}] run scoreboard players set @s DB 1
execute as @a[scores={thirst=..10,}] run scoreboard players set @s hung_boolean 1
execute as @a[scores={thirst=..10,}] run scoreboard players set @s nau_boolean 1
execute as @a[scores={thirst=..10,}] run scoreboard players set @s weak_boolean 1
execute as @a[scores={thirst=..10,}] run scoreboard players set @s hung_max_tier 2
execute as @a[scores={thirst=..10,}] run scoreboard players set @s weak_max_tier 1
execute as @a[scores={thirst=..10,}] run scoreboard players set @s nau_max_tier 4
execute as @a[scores={thirst=..10,}] run scoreboard players set @s hung_minact_tier 2
execute as @a[scores={thirst=..10,}] run scoreboard players set @s weak_minact_tier 3
execute as @a[scores={thirst=..10,}] run scoreboard players set @s nau_minact_tier 1
execute as @a[gamemode=creative] run scoreboard players set @s thirst 100
execute as @a[gamemode=spectator] run scoreboard players set @s thirst 100









