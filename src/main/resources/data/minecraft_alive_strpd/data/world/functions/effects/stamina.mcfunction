
function minecraft_alive_strpd:data/world/functions/effects/stamina_/0
execute as @a[scores={stamina=0..200}] if entity @a[scores={climb=0..0,crouch=0..0,jump=0..0,dealt=0..0,sprint=0..0,swim=0..0,walkowater=0..0,walk=0..0,walkuwater=0..0}] run scoreboard players add @s stamina 2
execute as @a[scores={stamina=200..400}] if entity @a[scores={climb=0..0,crouch=0..0,jump=0..0,dealt=0..0,sprint=0..0,swim=0..0,walkowater=0..0,walk=0..0,walkuwater=0..0}] run scoreboard players add @s stamina 3
execute as @a[scores={stamina=400..1000}] if entity @a[scores={climb=0..0,crouch=0..0,jump=0..0,dealt=0..0,sprint=0..0,swim=0..0,walkowater=0..0,walk=0..0,walkuwater=0..0}] run scoreboard players add @s stamina 4
execute as @a[scores={sneaktime=1..}] if entity @a[scores={climb=0..0,crouch=0..0,jump=0..0,dealt=0..0,sprint=0..0,swim=0..0,walkowater=0..0,walk=0..0,walkuwater=0..0}] run scoreboard players add @s stamina 6
execute as @a[scores={streg=5..5}] run scoreboard players set @s streg 0
scoreboard players add @a streg 1
execute as @a[scores={streg1=2..2}] run scoreboard players set @s streg1 0
execute as @a[scores={streg1=1..1}] run function world:effects/hotbardisp
scoreboard players add @a streg1 1
execute as @a[scores={stamina=..0}] run scoreboard players set @s stamina 0
execute as @a[scores={stamina=1500..}] run scoreboard players set @s stamina 1500
execute as @a[scores={streg=1..2}] run scoreboard players set @s climb 0
execute as @a[scores={streg=1..4}] run scoreboard players set @s crouch 0
execute as @a[scores={streg=1..1}] run function minecraft_alive_strpd:data/world/functions/effects/stamina_/14
execute as @a[scores={streg=1..1,jump=1..}] run scoreboard players set @s sprint 0
execute as @a[scores={streg=1..4,jump=0..0}] run scoreboard players set @s sprint 0
execute as @a[scores={streg=1..5,jump=0..0}] at @s if block ~ ~ ~ water run scoreboard players set @s sprint 0
execute as @a[scores={streg=1..1}] run scoreboard players set @s sneaktime 0
execute as @a[scores={streg=1..4}] run function minecraft_alive_strpd:data/world/functions/effects/stamina_/19
execute as @a[scores={walk=1..}] run scoreboard players add @a stamina 20
execute as @a[scores={streg=1..5}] run scoreboard players set @s walkuwater 0
execute as @a run function minecraft_alive_strpd:data/world/functions/effects/stamina_/22
execute as @a[scores={insomnia=25000..,streg1=1..1}] run scoreboard players remove @a stamina 1
execute as @a[scores={insomnia=35000..,streg1=1..1}] run scoreboard players remove @a stamina 1
execute as @a[scores={insomnia=45000..,streg1=1..1}] run scoreboard players remove @a stamina 1
execute as @a[scores={insomnia=55000..,streg1=1..1}] run scoreboard players remove @a stamina 1
execute as @a[scores={insomnia=65000..,streg1=1..1}] run scoreboard players remove @a stamina 1
execute as @a[scores={insomnia=75000..,streg1=1..1}] run scoreboard players remove @a stamina 1
execute as @a[scores={insomnia=85000..,streg1=1..1}] run scoreboard players remove @a stamina 1
execute as @a[scores={insomnia=95000..,streg1=1..1}] run scoreboard players remove @a stamina 1
execute as @a[scores={insomnia=105000..,streg1=1..1}] run scoreboard players remove @a stamina 1
execute as @a[scores={DT=3000..}] run scoreboard players add @s insomnia 1
execute as @a[scores={DT=5000..}] run scoreboard players add @s insomnia 1
execute as @a[scores={DT=7000..}] run scoreboard players add @s insomnia 1
execute as @a[scores={stamina=..200}] run effect give @s weakness 5 0
execute as @a[scores={stamina=..150}] run function minecraft_alive_strpd:data/world/functions/effects/stamina_/36
execute as @a[scores={stamina=..100}] run function minecraft_alive_strpd:data/world/functions/effects/stamina_/37
execute as @a[scores={stamina=..50}] run function minecraft_alive_strpd:data/world/functions/effects/stamina_/38