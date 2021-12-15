
scoreboard objectives add skeleton_ent dummy 
scoreboard objectives add skeleton_max dummy 
execute unless entity @e[name=dmain,scores={skeleton_max=0..}] run scoreboard players set @e[name=dmain] skeleton_max 50 
execute store result score @e[name=dmain] skeleton_ent if entity @e[type=skeleton] 
scoreboard players operation @e[name=dmain] skeleton_ent -= @e[name=dmain] skeleton_max 
execute if entity @e[name=dmain,scores={skeleton_ent=1..}] run kill @e[type=skeleton,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={skeleton_ent=1..}] run say [Minecraft Alive] - Max skeleton detected. Clearing... 