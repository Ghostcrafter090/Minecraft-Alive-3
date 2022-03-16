
scoreboard objectives add piglin_brute_ent dummy 
scoreboard objectives add piglin_brute_max dummy 
execute unless entity @e[name=dmain,scores={piglin_brute_max=0..}] run scoreboard players set @e[name=dmain] piglin_brute_max 50 
execute store result score @e[name=dmain] piglin_brute_ent if entity @e[type=piglin_brute] 
scoreboard players operation @e[name=dmain] piglin_brute_ent -= @e[name=dmain] piglin_brute_max 
execute if entity @e[name=dmain,scores={piglin_brute_ent=1..}] run kill @e[type=piglin_brute,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={piglin_brute_ent=1..}] run say [Minecraft Alive] - Max piglin_brute detected. Clearing... 