
scoreboard objectives add fish_bob_ent dummy 
scoreboard objectives add fish_bob_max dummy 
execute unless entity @e[name=dmain,scores={fish_bob_max=0..}] run scoreboard players set @e[name=dmain] fish_bob_max 50 
execute store result score @e[name=dmain] fish_bob_ent if entity @e[type=fishing_bobber] 
scoreboard players operation @e[name=dmain] fish_bob_ent -= @e[name=dmain] fish_bob_max 
execute if entity @e[name=dmain,scores={fish_bob_ent=1..}] run kill @e[type=fishing_bobber,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={fish_bob_ent=1..}] run say [Minecraft Alive] - Max fishing_bobber detected. Clearing... 