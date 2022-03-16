#define
scoreboard objectives add climb minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add sneaktime minecraft.custom:minecraft.sneak_time
scoreboard objectives add swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add insomnia minecraft.custom:minecraft.time_since_rest
scoreboard objectives add walkowater minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add walkuwater minecraft.custom:minecraft.walk_under_water_one_cm
scoreboard objectives add stamina dummy
scoreboard objectives add streg dummy
scoreboard objectives add streg1 dummy

#main
execute as @a[scores={stamina=0..200}] if entity @a[scores={climb=0..0,crouch=0..0,jump=0..0,dealt=0..0,sprint=0..0,swim=0..0,walkowater=0..0,walk=0..0,walkuwater=0..0}] run scoreboard players add @s stamina 2
execute as @a[scores={stamina=200..400}] if entity @a[scores={climb=0..0,crouch=0..0,jump=0..0,dealt=0..0,sprint=0..0,swim=0..0,walkowater=0..0,walk=0..0,walkuwater=0..0}] run scoreboard players add @s stamina 3
execute as @a[scores={stamina=400..1000}] if entity @a[scores={climb=0..0,crouch=0..0,jump=0..0,dealt=0..0,sprint=0..0,swim=0..0,walkowater=0..0,walk=0..0,walkuwater=0..0}] run scoreboard players add @s stamina 4
execute as @a[scores={sneaktime=1..}] if entity @a[scores={climb=0..0,crouch=0..0,jump=0..0,dealt=0..0,sprint=0..0,swim=0..0,walkowater=0..0,walk=0..0,walkuwater=0..0}] run scoreboard players add @s stamina 6
execute as @a[scores={streg=5..5}] run scoreboard players set @s streg 0
scoreboard players add @a streg 1
# execute as @a run scoreboard players operation @s treg += @e[name=dmain,type=marker,scores={blockt=0..}] blockt
scoreboard players add @a treg 2
execute as @a[scores={treg=240..}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..500}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..300}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..100}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..400}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..,stamina=..200}] run scoreboard players remove @s thirst 1
execute as @a[scores={treg=240..}] run scoreboard players set @s treg -140
execute as @a[scores={streg1=2..2}] run scoreboard players set @s streg1 0
# execute as @a[scores={streg1=1..1}] run function world:effects/hotbardisp
scoreboard objectives setdisplay sidebar.team.aqua thirst
scoreboard objectives setdisplay sidebar.team.green stamina
scoreboard objectives setdisplay sidebar.team.gold insomnia
scoreboard objectives setdisplay sidebar.team.black DB
scoreboard players add @a streg1 1
execute as @a[scores={stamina=..0}] run scoreboard players set @s stamina 0
execute as @a[scores={stamina=1500..}] run scoreboard players set @s stamina 1500
execute as @a[scores={streg=1..2}] run scoreboard players set @s climb 0
execute as @a[scores={streg=1..4}] run scoreboard players set @s crouch 0
execute as @a[scores={streg=1..1}] run scoreboard players set @s jump 0
execute as @a[scores={streg=1..1}] run scoreboard players set @s dealt 0
execute as @a[scores={streg=1..1,jump=1..}] run scoreboard players set @s sprint 0
execute as @a[scores={streg=1..4,jump=0..0}] run scoreboard players set @s sprint 0
execute as @a[scores={streg=1..5,jump=0..0}] at @s if block ~ ~ ~ water run scoreboard players set @s sprint 0
execute as @a[scores={streg=1..1}] run scoreboard players set @s sneaktime 0
execute as @a[scores={streg=1..4}] run scoreboard players set @s swim 0
execute as @a[scores={streg=1..4}] run scoreboard players set @s walkowater 0
execute as @a[scores={streg=1..4}] run scoreboard players set @s walk 0
execute as @a[scores={walk=1..}] run scoreboard players add @a stamina 40
execute as @a[scores={streg=1..5}] run scoreboard players set @s walkuwater 0
execute as @a run scoreboard players operation @s stamina -= @s climb
execute as @a run scoreboard players operation @s stamina -= @s crouch
execute as @a run scoreboard players operation @s stamina -= @s jump
execute as @a run scoreboard players operation @s stamina -= @s dealt
execute as @a run scoreboard players operation @s stamina -= @s sprint
execute as @a run scoreboard players operation @s stamina -= @s swim
execute as @a run scoreboard players operation @s stamina -= @s walkowater
execute as @a run scoreboard players operation @s stamina -= @s walk
execute as @a run scoreboard players operation @s stamina -= @s walkuwater
#execute as @a[scores={streg1=0..0}] run scoreboard players operation @s insomniaderp += @s insomnia
#execute as @a[scores={streg1=1..1}] run scoreboard players operation @s insomniaderp /= @s derp
#execute as @a[scores={streg1=2..2}] run scoreboard players operation @s stamina -= @s insomniaderp
#execute as @a[scores={streg1=3..3}] run scoreboard players set @a insomniaderp 0

#effects
execute as @a[scores={stamina=..200}] run effect give @s weakness 5 0
execute as @a[scores={stamina=..150}] run effect give @s weakness 5 0
execute as @a[scores={stamina=..150}] run effect give @s mining_fatigue 4 0
execute as @a[scores={stamina=..100}] run effect give @s weakness 5 1
execute as @a[scores={stamina=..100}] run effect give @s mining_fatigue 4 0
execute as @a[scores={stamina=..50}] run effect give @s weakness 5 1
execute as @a[scores={stamina=..50}] run effect give @s mining_fatigue 4 0
execute as @a[scores={stamina=..50}] run effect give @s slowness 3 0












