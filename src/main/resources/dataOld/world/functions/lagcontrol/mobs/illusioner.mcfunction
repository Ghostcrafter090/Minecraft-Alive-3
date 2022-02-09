
scoreboard objectives add illusioner_ent dummy 
scoreboard objectives add illusioner_max dummy 
execute unless entity @e[name=dmain,scores={illusioner_max=0..}] run scoreboard players set @e[name=dmain] illusioner_max 50 
execute store result score @e[name=dmain] illusioner_ent if entity @e[type=illusioner] 
scoreboard players operation @e[name=dmain] illusioner_ent -= @e[name=dmain] illusioner_max 
execute if entity @e[name=dmain,scores={illusioner_ent=1..}] run kill @e[type=illusioner,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={illusioner_ent=1..}] run say [Minecraft Alive] - Max illusioner detected. Clearing... 