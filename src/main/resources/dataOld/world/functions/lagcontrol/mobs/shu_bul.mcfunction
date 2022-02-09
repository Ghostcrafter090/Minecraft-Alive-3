
scoreboard objectives add shu_bul_ent dummy 
scoreboard objectives add shu_bul_max dummy 
execute unless entity @e[name=dmain,scores={shu_bul_max=0..}] run scoreboard players set @e[name=dmain] shu_bul_max 50 
execute store result score @e[name=dmain] shu_bul_ent if entity @e[type=shulker_bullet] 
scoreboard players operation @e[name=dmain] shu_bul_ent -= @e[name=dmain] shu_bul_max 
execute if entity @e[name=dmain,scores={shu_bul_ent=1..}] run kill @e[type=shulker_bullet,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={shu_bul_ent=1..}] run say [Minecraft Alive] - Max shulker_bullet detected. Clearing... 