
scoreboard objectives add drag_fire_ent dummy 
scoreboard objectives add drag_fire_max dummy 
execute unless entity @e[name=dmain,scores={drag_fire_max=0..}] run scoreboard players set @e[name=dmain] drag_fire_max 50 
execute store result score @e[name=dmain] drag_fire_ent if entity @e[type=dragon_fireball] 
scoreboard players operation @e[name=dmain] drag_fire_ent -= @e[name=dmain] drag_fire_max 
execute if entity @e[name=dmain,scores={drag_fire_ent=1..}] run kill @e[type=dragon_fireball,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={drag_fire_ent=1..}] run say [Minecraft Alive] - Max dragon_fireball detected. Clearing... 