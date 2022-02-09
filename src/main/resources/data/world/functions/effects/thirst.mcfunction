
function world:effects/thirst_/0
execute as @a unless entity @s[scores={thirst=-1000..1000}] run scoreboard players set @s thirst 100
scoreboard players add @a treg 1
execute as @a[scores={treg=240..}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..500}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..300}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..100}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..400}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..200}] run scoreboard players remove @s thirst 1
execute as @a[scores={air=..5}] run function world:effects/thirst_/9
execute as @a[scores={treg=240..}] run scoreboard players set @s treg -140
execute as @a[scores={drink=1..,thirst=..100}] run scoreboard players add @s thirst 30
execute as @a[scores={drink=1..}] run scoreboard players set @s drink 0
execute as @a[scores={death=1..}] run function world:effects/thirst_/13
execute as @a[scores={air=..150}] run effect give @s nausea 10 10
execute as @a[scores={air=100..100}] run effect give @s blindness 1 10
execute as @a[scores={air=50..50}] run effect give @s blindness 1 10
execute as @a[scores={air=25..25}] run effect give @s blindness 1 10
execute as @a[scores={air=12..12}] run effect give @s blindness 1 10
execute as @a[scores={air=6..6}] run effect give @s blindness 1 10
execute as @a[scores={air=3..3}] run effect give @s blindness 1 10
execute as @a[scores={air=..2}] run effect give @s blindness 1 10
execute as @a[scores={air=25..25}] run scoreboard players remove @s stamina 4
execute as @a[scores={air=..5}] run function world:effects/thirst_/23
execute as @a[scores={thirst=..20}] run effect give @s weakness 4 0
execute as @a[scores={thirst=..15}] run function world:effects/thirst_/25
execute as @a[scores={thirst=..10}] run function world:effects/thirst_/26
execute as @a[scores={thirst=..5}] run function world:effects/thirst_/27
execute as @a[scores={thirst=..0}] run effect give @s wither 2 0
execute as @a[scores={thirst=..10,}] run function world:effects/thirst_/29
execute as @a[gamemode=creative] run scoreboard players set @s thirst 100
execute as @a[gamemode=spectator] run scoreboard players set @s thirst 100