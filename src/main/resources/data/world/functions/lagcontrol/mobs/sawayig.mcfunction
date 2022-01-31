
scoreboard objectives add sawayig_ent dummy 
scoreboard objectives add sawayig_max dummy 
execute unless entity @e[name=dmain,scores={sawayig_max=0..}] run scoreboard players set @e[name=dmain] sawayig_max 30
execute store result score @e[name=dmain] sawayig_ent if entity @e[tag=sawayig] 
scoreboard players operation @e[name=dmain] sawayig_ent -= @e[name=dmain] sawayig_max 
execute if entity @e[name=dmain,scores={sawayig_ent=1..}] run kill @e[tag=sawayig,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={sawayig_ent=1..}] run say [Minecraft Alive] - Max Sawayig's detected. Clearing...