
scoreboard objectives add vex_ent dummy 
scoreboard objectives add vex_max dummy 
execute unless entity @e[name=dmain,scores={vex_max=0..}] run scoreboard players set @e[name=dmain] vex_max 50 
execute store result score @e[name=dmain] vex_ent if entity @e[type=vex] 
scoreboard players operation @e[name=dmain] vex_ent -= @e[name=dmain] vex_max 
execute if entity @e[name=dmain,scores={vex_ent=1..}] run kill @e[type=vex,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={vex_ent=1..}] run say [Minecraft Alive] - Max vex detected. Clearing... 