
scoreboard objectives add evoker_ent dummy 
scoreboard objectives add evoker_max dummy 
execute unless entity @e[name=dmain,scores={evoker_max=0..}] run scoreboard players set @e[name=dmain] evoker_max 50 
execute store result score @e[name=dmain] evoker_ent if entity @e[type=evoker] 
scoreboard players operation @e[name=dmain] evoker_ent -= @e[name=dmain] evoker_max 
execute if entity @e[name=dmain,scores={evoker_ent=1..}] run kill @e[type=evoker,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={evoker_ent=1..}] run say [Minecraft Alive] - Max evoker detected. Clearing... 