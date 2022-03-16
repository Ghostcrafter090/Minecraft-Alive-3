
scoreboard objectives add falling_bl_ent dummy 
scoreboard objectives add falling_bl_max dummy 
execute unless entity @e[name=dmain,scores={falling_bl_max=0..}] run scoreboard players set @e[name=dmain] falling_bl_max 30 
execute store result score @e[name=dmain] falling_bl_ent if entity @e[type=falling_block] 
scoreboard players operation @e[name=dmain] falling_bl_ent -= @e[name=dmain] falling_bl_max 
execute if entity @e[name=dmain,scores={falling_bl_ent=1..}] run kill @e[type=falling_block,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={falling_bl_ent=1..}] run say [Minecraft Alive] - Max falling_block detected. Clearing... 