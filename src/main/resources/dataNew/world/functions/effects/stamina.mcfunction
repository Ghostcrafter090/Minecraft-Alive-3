
function world:effects/stamina.0/0
execute as @a[scores={stamina=0..200}] if entity @a[scores={climb=0..0,crouch=0..0,jump=0..0,dealt=0..0,sprint=0..0,swim=0..0,walkowater=0..0,walk=0..0,walkuwater=0..0}] run scoreboard players add @s stamina 2
execute as @a[scores={stamina=200..400}] if entity @a[scores={climb=0..0,crouch=0..0,jump=0..0,dealt=0..0,sprint=0..0,swim=0..0,walkowater=0..0,walk=0..0,walkuwater=0..0}] run scoreboard players add @s stamina 3
execute as @a[scores={stamina=400..1000}] if entity @a[scores={climb=0..0,crouch=0..0,jump=0..0,dealt=0..0,sprint=0..0,swim=0..0,walkowater=0..0,walk=0..0,walkuwater=0..0}] run scoreboard players add @s stamina 4
execute as @a[scores={sneaktime=1..}] if entity @a[scores={climb=0..0,crouch=0..0,jump=0..0,dealt=0..0,sprint=0..0,swim=0..0,walkowater=0..0,walk=0..0,walkuwater=0..0}] run scoreboard players add @s stamina 6
execute as @a[scores={streg=5..5}] run scoreboard players set @s streg 0
function world:effects/stamina.0/6
execute as @a[scores={treg=240..}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..500}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..300}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..100}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..400}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..200}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..}] run scoreboard players set @s treg -140
execute as @a[scores={streg1=2..2}] run scoreboard players set @s streg1 0
function world:effects/stamina.0/15
execute as @a[scores={stamina=..0}] run scoreboard players set @s stamina 0
execute as @a[scores={stamina=1500..}] run scoreboard players set @s stamina 1500
execute as @a[scores={streg=1..2}] run scoreboard players set @s climb 0
execute as @a[scores={streg=1..4}] run scoreboard players set @s crouch 0
execute as @a[scores={streg=1..1}] run function world:effects/stamina.0/20
execute as @a[scores={streg=1..1,jump=1..}] run scoreboard players set @s sprint 0
execute as @a[scores={streg=1..4,jump=0..0}] run scoreboard players set @s sprint 0
execute as @a[scores={streg=1..5,jump=0..0}] at @s if block ~ ~ ~ water run scoreboard players set @s sprint 0
execute as @a[scores={streg=1..1}] run scoreboard players set @s sneaktime 0
execute as @a[scores={streg=1..4}] run function world:effects/stamina.0/25
execute as @a[scores={walk=1..}] run scoreboard players add @a stamina 40
execute as @a[scores={streg=1..5}] run scoreboard players set @s walkuwater 0
execute as @a run function world:effects/stamina.0/28
execute as @a[scores={stamina=..200}] run effect give @s weakness 5 0
execute as @a[scores={stamina=..150}] run function world:effects/stamina.0/30
execute as @a[scores={stamina=..100}] run function world:effects/stamina.0/31
execute as @a[scores={stamina=..50}] run function world:effects/stamina.0/32