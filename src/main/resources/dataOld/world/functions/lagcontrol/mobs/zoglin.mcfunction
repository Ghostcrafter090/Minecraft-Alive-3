
scoreboard objectives add zoglin_ent dummy 
scoreboard objectives add zoglin_max dummy 
execute unless entity @e[name=dmain,scores={zoglin_max=0..}] run scoreboard players set @e[name=dmain] zoglin_max 50 
execute store result score @e[name=dmain] zoglin_ent if entity @e[type=zoglin] 
scoreboard players operation @e[name=dmain] zoglin_ent -= @e[name=dmain] zoglin_max 
execute if entity @e[name=dmain,scores={zoglin_ent=1..}] run kill @e[type=zoglin,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={zoglin_ent=1..}] run say [Minecraft Alive] - Max zoglin detected. Clearing... 