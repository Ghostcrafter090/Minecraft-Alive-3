
scoreboard objectives add spec_ar_ent dummy 
scoreboard objectives add spec_ar_max dummy 
execute unless entity @e[name=dmain,scores={spec_ar_max=0..}] run scoreboard players set @e[name=dmain] spec_ar_max 50 
execute store result score @e[name=dmain] spec_ar_ent if entity @e[type=spectral_arrow] 
scoreboard players operation @e[name=dmain] spec_ar_ent -= @e[name=dmain] spec_ar_max 
execute if entity @e[name=dmain,scores={spec_ar_ent=1..}] run kill @e[type=spectral_arrow,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={spec_ar_ent=1..}] run say [Minecraft Alive] - Max spectral_arrow detected. Clearing... 