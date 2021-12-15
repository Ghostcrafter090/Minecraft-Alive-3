
scoreboard objectives add piglin_ent dummy 
scoreboard objectives add piglin_max dummy 
execute unless entity @e[name=dmain,scores={piglin_max=0..}] run scoreboard players set @e[name=dmain] piglin_max 50 
execute store result score @e[name=dmain] piglin_ent if entity @e[type=piglin] 
scoreboard players operation @e[name=dmain] piglin_ent -= @e[name=dmain] piglin_max 
execute if entity @e[name=dmain,scores={piglin_ent=1..}] run kill @e[type=piglin,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={piglin_ent=1..}] run say [Minecraft Alive] - Max piglin detected. Clearing... 