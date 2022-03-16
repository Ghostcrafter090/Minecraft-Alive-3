
scoreboard objectives add eye_of_end_ent dummy 
scoreboard objectives add eye_of_end_max dummy 
execute unless entity @e[name=dmain,scores={eye_of_end_max=0..}] run scoreboard players set @e[name=dmain] eye_of_end_max 50 
execute store result score @e[name=dmain] eye_of_end_ent if entity @e[type=eye_of_ender] 
scoreboard players operation @e[name=dmain] eye_of_end_ent -= @e[name=dmain] eye_of_end_max 
execute if entity @e[name=dmain,scores={eye_of_end_ent=1..}] run kill @e[type=eye_of_ender,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={eye_of_end_ent=1..}] run say [Minecraft Alive] - Max eye_of_ender detected. Clearing... 