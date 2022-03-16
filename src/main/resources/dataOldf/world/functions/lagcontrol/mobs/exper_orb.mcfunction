
scoreboard objectives add exper_orb_ent dummy 
scoreboard objectives add exper_orb_max dummy 
execute unless entity @e[name=dmain,scores={exper_orb_max=0..}] run scoreboard players set @e[name=dmain] exper_orb_max 50 
execute store result score @e[name=dmain] exper_orb_ent if entity @e[type=experience_orb] 
scoreboard players operation @e[name=dmain] exper_orb_ent -= @e[name=dmain] exper_orb_max 
execute if entity @e[name=dmain,scores={exper_orb_ent=1..}] run kill @e[type=experience_orb,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={exper_orb_ent=1..}] run say [Minecraft Alive] - Max experience_orb detected. Clearing... 