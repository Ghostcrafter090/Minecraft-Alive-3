
scoreboard objectives add smal_fire_ent dummy 
scoreboard objectives add smal_fire_max dummy 
execute unless entity @e[name=dmain,scores={smal_fire_max=0..}] run scoreboard players set @e[name=dmain] smal_fire_max 50 
execute store result score @e[name=dmain] smal_fire_ent if entity @e[type=small_fireball] 
scoreboard players operation @e[name=dmain] smal_fire_ent -= @e[name=dmain] smal_fire_max 
execute if entity @e[name=dmain,scores={smal_fire_ent=1..}] run kill @e[type=small_fireball,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={smal_fire_ent=1..}] run say [Minecraft Alive] - Max small_fireball detected. Clearing... 