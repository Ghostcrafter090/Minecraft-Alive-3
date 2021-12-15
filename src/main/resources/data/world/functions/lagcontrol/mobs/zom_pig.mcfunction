
scoreboard objectives add zom_pig_ent dummy 
scoreboard objectives add zom_pig_max dummy 
execute unless entity @e[name=dmain,scores={zom_pig_max=0..}] run scoreboard players set @e[name=dmain] zom_pig_max 50 
execute store result score @e[name=dmain] zom_pig_ent if entity @e[type=zombified_piglin] 
scoreboard players operation @e[name=dmain] zom_pig_ent -= @e[name=dmain] zom_pig_max 
execute if entity @e[name=dmain,scores={zom_pig_ent=1..}] run kill @e[type=zombified_piglin,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={zom_pig_ent=1..}] run say [Minecraft Alive] - Max zombified_piglin detected. Clearing... 