
scoreboard objectives add horse_ent dummy 
scoreboard objectives add horse_max dummy 
execute unless entity @e[name=dmain,scores={horse_max=0..}] run scoreboard players set @e[name=dmain] horse_max 30 
execute store result score @e[name=dmain] horse_ent if entity @e[type=horse] 
scoreboard players operation @e[name=dmain] horse_ent -= @e[name=dmain] horse_max 
execute if entity @e[name=dmain,scores={horse_ent=1..}] run kill @e[type=horse,limit=20,sort=random,nbt=!{Tame:1b}]
execute if entity @e[name=dmain,scores={horse_ent=1..}] run say [Minecraft Alive] - Max horse detected. Clearing... 