
scoreboard objectives add ender_pearl_ent dummy 
scoreboard objectives add ender_pearl_max dummy 
execute unless entity @e[name=dmain,scores={ender_pearl_max=0..}] run scoreboard players set @e[name=dmain] ender_pearl_max 50 
execute store result score @e[name=dmain] ender_pearl_ent if entity @e[type=ender_pearl] 
scoreboard players operation @e[name=dmain] ender_pearl_ent -= @e[name=dmain] ender_pearl_max 
execute if entity @e[name=dmain,scores={ender_pearl_ent=1..}] run kill @e[type=ender_pearl,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={ender_pearl_ent=1..}] run say [Minecraft Alive] - Max ender_pearl detected. Clearing... 