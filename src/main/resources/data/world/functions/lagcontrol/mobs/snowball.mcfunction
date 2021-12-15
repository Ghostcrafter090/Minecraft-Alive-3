
scoreboard objectives add snowball_ent dummy 
scoreboard objectives add snowball_max dummy 
execute unless entity @e[name=dmain,scores={snowball_max=0..}] run scoreboard players set @e[name=dmain] snowball_max 50 
execute store result score @e[name=dmain] snowball_ent if entity @e[type=snowball] 
scoreboard players operation @e[name=dmain] snowball_ent -= @e[name=dmain] snowball_max 
execute if entity @e[name=dmain,scores={snowball_ent=1..}] run kill @e[type=snowball,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={snowball_ent=1..}] run say [Minecraft Alive] - Max snowball detected. Clearing... 