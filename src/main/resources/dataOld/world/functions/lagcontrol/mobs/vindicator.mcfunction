
scoreboard objectives add vindicator_ent dummy 
scoreboard objectives add vindicator_max dummy 
execute unless entity @e[name=dmain,scores={vindicator_max=0..}] run scoreboard players set @e[name=dmain] vindicator_max 50 
execute store result score @e[name=dmain] vindicator_ent if entity @e[type=vindicator] 
scoreboard players operation @e[name=dmain] vindicator_ent -= @e[name=dmain] vindicator_max 
execute if entity @e[name=dmain,scores={vindicator_ent=1..}] run kill @e[type=vindicator,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={vindicator_ent=1..}] run say [Minecraft Alive] - Max vindicator detected. Clearing... 