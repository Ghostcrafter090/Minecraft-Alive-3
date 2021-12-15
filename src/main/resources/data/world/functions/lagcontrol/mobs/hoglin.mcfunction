
scoreboard objectives add hoglin_ent dummy 
scoreboard objectives add hoglin_max dummy 
execute unless entity @e[name=dmain,scores={hoglin_max=0..}] run scoreboard players set @e[name=dmain] hoglin_max 50 
execute store result score @e[name=dmain] hoglin_ent if entity @e[type=hoglin] 
scoreboard players operation @e[name=dmain] hoglin_ent -= @e[name=dmain] hoglin_max 
execute if entity @e[name=dmain,scores={hoglin_ent=1..}] run kill @e[type=hoglin,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={hoglin_ent=1..}] run say [Minecraft Alive] - Max hoglin detected. Clearing... 