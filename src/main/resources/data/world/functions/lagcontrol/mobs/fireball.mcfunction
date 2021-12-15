
scoreboard objectives add fireball_ent dummy 
scoreboard objectives add fireball_max dummy 
execute unless entity @e[name=dmain,scores={fireball_max=0..}] run scoreboard players set @e[name=dmain] fireball_max 50 
execute store result score @e[name=dmain] fireball_ent if entity @e[type=fireball] 
scoreboard players operation @e[name=dmain] fireball_ent -= @e[name=dmain] fireball_max 
execute if entity @e[name=dmain,scores={fireball_ent=1..}] run kill @e[type=fireball,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={fireball_ent=1..}] run say [Minecraft Alive] - Max fireball detected. Clearing... 