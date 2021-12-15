
scoreboard objectives add arrow_ent dummy 
scoreboard objectives add arrow_max dummy 
execute unless entity @e[name=dmain,scores={arrow_max=0..}] run scoreboard players set @e[name=dmain] arrow_max 50 
execute store result score @e[name=dmain] arrow_ent if entity @e[type=arrow] 
scoreboard players operation @e[name=dmain] arrow_ent -= @e[name=dmain] arrow_max 
execute if entity @e[name=dmain,scores={arrow_ent=1..}] run kill @e[type=arrow,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={arrow_ent=1..}] run say [Minecraft Alive] - Max arrow detected. Clearing... 