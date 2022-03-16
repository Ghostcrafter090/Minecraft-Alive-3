
scoreboard objectives add llama_spit_ent dummy 
scoreboard objectives add llama_spit_max dummy 
execute unless entity @e[name=dmain,scores={llama_spit_max=0..}] run scoreboard players set @e[name=dmain] llama_spit_max 50 
execute store result score @e[name=dmain] llama_spit_ent if entity @e[type=llama_spit] 
scoreboard players operation @e[name=dmain] llama_spit_ent -= @e[name=dmain] llama_spit_max 
execute if entity @e[name=dmain,scores={llama_spit_ent=1..}] run kill @e[type=llama_spit,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={llama_spit_ent=1..}] run say [Minecraft Alive] - Max llama_spit detected. Clearing... 