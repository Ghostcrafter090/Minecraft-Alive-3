
scoreboard objectives add exper_bot_ent dummy 
scoreboard objectives add exper_bot_max dummy 
execute unless entity @e[name=dmain,scores={exper_bot_max=0..}] run scoreboard players set @e[name=dmain] exper_bot_max 50 
execute store result score @e[name=dmain] exper_bot_ent if entity @e[type=experience_bottle] 
scoreboard players operation @e[name=dmain] exper_bot_ent -= @e[name=dmain] exper_bot_max 
execute if entity @e[name=dmain,scores={exper_bot_ent=1..}] run kill @e[type=experience_bottle,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={exper_bot_ent=1..}] run say [Minecraft Alive] - Max experience_bottle detected. Clearing... 