
scoreboard objectives add sheep_ent dummy 
scoreboard objectives add sheep_max dummy 
execute unless entity @e[name=dmain,scores={sheep_max=0..}] run scoreboard players set @e[name=dmain] sheep_max 50 
execute store result score @e[name=dmain] sheep_ent if entity @e[type=sheep] 
scoreboard players operation @e[name=dmain] sheep_ent -= @e[name=dmain] sheep_max 
execute if entity @e[name=dmain,scores={sheep_ent=1..}] run kill @e[type=sheep,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={sheep_ent=1..}] run say [Minecraft Alive] - Max sheep detected. Clearing... 