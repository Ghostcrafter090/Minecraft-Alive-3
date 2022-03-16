
function world:effects/thirst.0/0
execute as @a unless entity @s[scores={thirst=-1000..1000}] run scoreboard players set @s thirst 100
execute as @a[scores={drink=1..,thirst=..100}] run scoreboard players add @s thirst 30
execute as @a[scores={drink=1..}] run scoreboard players set @s drink 0
execute as @a[scores={death=1..}] run function world:effects/thirst.0/4
execute as @a[scores={thirst=..20}] run effect give @s weakness 4 0
execute as @a[scores={thirst=..15}] run function world:effects/thirst.0/6
execute as @a[scores={thirst=..10}] run function world:effects/thirst.0/7
execute as @a[scores={thirst=..5}] run function world:effects/thirst.0/8
execute as @a[scores={thirst=..0}] run effect give @s wither 2 0
execute as @a[scores={thirst=..10,}] run function world:effects/thirst.0/10
execute as @a[gamemode=creative] run scoreboard players set @s thirst 100
execute as @a[gamemode=spectator] run scoreboard players set @s thirst 100