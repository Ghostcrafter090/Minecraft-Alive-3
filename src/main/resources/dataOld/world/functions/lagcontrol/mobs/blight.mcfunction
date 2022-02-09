
scoreboard objectives add blight_ent dummy 
scoreboard objectives add blight_max dummy 
execute unless entity @e[name=dmain,scores={blight_max=0..}] run scoreboard players set @e[name=dmain] blight_max 50 
execute store result score @e[name=dmain] blight_ent if entity @e[tag=blight] 
scoreboard players operation @e[name=dmain] blight_ent -= @e[name=dmain] blight_max 
execute if entity @e[name=dmain,scores={blight_ent=1..}] run kill @e[tag=blight,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={blight_ent=1..}] run say [Minecraft Alive] - Max blight's detected. Clearing...