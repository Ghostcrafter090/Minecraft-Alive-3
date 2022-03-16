
scoreboard objectives add pig_ent dummy 
scoreboard objectives add pig_max dummy 
execute unless entity @e[name=dmain,scores={pig_max=0..}] run scoreboard players set @e[name=dmain] pig_max 50 
execute store result score @e[name=dmain] pig_ent if entity @e[type=pig] 
scoreboard players operation @e[name=dmain] pig_ent -= @e[name=dmain] pig_max 
execute if entity @e[name=dmain,scores={pig_ent=1..}] run kill @e[type=pig,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={pig_ent=1..}] run say [Minecraft Alive] - Max pig detected. Clearing... 