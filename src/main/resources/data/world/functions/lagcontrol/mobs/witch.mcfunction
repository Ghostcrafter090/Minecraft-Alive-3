
scoreboard objectives add witch_ent dummy 
scoreboard objectives add witch_max dummy 
execute unless entity @e[name=dmain,scores={witch_max=0..}] run scoreboard players set @e[name=dmain] witch_max 50 
execute store result score @e[name=dmain] witch_ent if entity @e[type=witch] 
scoreboard players operation @e[name=dmain] witch_ent -= @e[name=dmain] witch_max 
execute if entity @e[name=dmain,scores={witch_ent=1..}] run kill @e[type=witch,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={witch_ent=1..}] run say [Minecraft Alive] - Max witch detected. Clearing... 