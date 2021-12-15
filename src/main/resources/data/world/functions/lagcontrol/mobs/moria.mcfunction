
scoreboard objectives add moria_ent dummy 
scoreboard objectives add moria_max dummy 
execute unless entity @e[name=dmain,scores={moria_max=0..}] run scoreboard players set @e[name=dmain] moria_max 10
execute store result score @e[name=dmain] moria_ent if entity @e[scores={airfill=1..1},tag=!airfill]
scoreboard players operation @e[name=dmain] moria_ent -= @e[name=dmain] moria_max 
execute if entity @e[name=dmain,scores={moria_ent=1..}] run kill @e[scores={airfill=1..1},limit=5,sort=random]
execute if entity @e[name=dmain,scores={moria_ent=1..}] run say [Minecraft Alive] - Max Moria Creatures detected. Clearing...