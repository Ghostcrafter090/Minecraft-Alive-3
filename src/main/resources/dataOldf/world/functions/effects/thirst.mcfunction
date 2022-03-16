#thirst
#define
scoreboard objectives add thirst dummy
scoreboard objectives add death deathCount
scoreboard objectives add treg dummy
scoreboard objectives add drink minecraft.used:minecraft.potion
scoreboard objectives add air air

#main
execute as @a unless entity @s[scores={thirst=-1000..1000}] run scoreboard players set @s thirst 100
scoreboard players add @a treg 1
execute as @a[scores={treg=240..}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..500}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..300}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..100}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..400}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..200}] run scoreboard players remove @s thirst 1
execute as @a[scores={air=..5}] run scoreboard players add @s thirst 1
execute as @a[scores={air=..5}] run scoreboard players add @s[scores={insomnia=..40000}] insomnia 100
execute as @a[scores={treg=240..}] run scoreboard players set @s treg -140
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
execute as @a[scores={air=..150}] run effect give @s nausea 10 10
execute as @a[scores={air=100..100}] run effect give @s blindness 1 10
execute as @a[scores={air=50..50}] run effect give @s blindness 1 10
execute as @a[scores={air=25..25}] run effect give @s blindness 1 10
execute as @a[scores={air=12..12}] run effect give @s blindness 1 10
execute as @a[scores={air=6..6}] run effect give @s blindness 1 10
execute as @a[scores={air=3..3}] run effect give @s blindness 1 10
execute as @a[scores={air=..2}] run effect give @s blindness 1 10
execute as @a[scores={air=25..25}] run scoreboard players remove @s stamina 4
execute as @a[scores={air=..5}] run scoreboard players set @s DB 1
execute as @a[scores={air=..5}] run scoreboard players set @s nau_boolean 1
execute as @a[scores={air=..5}] run scoreboard players set @s weak_boolean 1
execute as @a[scores={air=..5}] run scoreboard players set @s weak_max_tier 1
execute as @a[scores={air=..5}] run scoreboard players set @s nau_max_tier 4
execute as @a[scores={air=..5}] run scoreboard players set @s weak_minact_tier 3
execute as @a[scores={air=..5}] run scoreboard players set @s nau_minact_tier 1
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









