
scoreboard objectives add cod_ent dummy 
scoreboard objectives add cod_max dummy 
execute unless entity @e[name=dmain,scores={cod_max=0..}] run scoreboard players set @e[name=dmain] cod_max 50 
execute store result score @e[name=dmain] cod_ent if entity @e[type=cod] 
scoreboard players operation @e[name=dmain] cod_ent -= @e[name=dmain] cod_max 
execute if entity @e[name=dmain,scores={cod_ent=1..}] run kill @e[type=cod,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={cod_ent=1..}] run say [Minecraft Alive] - Max cod detected. Clearing... 