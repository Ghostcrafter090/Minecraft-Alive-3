execute at @a run tag @e[type=item,distance=0..20] add playerfound
scoreboard objectives add ar_ef_cl_ent dummy 
scoreboard objectives add ar_ef_cl_max dummy 
execute unless entity @e[name=dmain,scores={ar_ef_cl_max=0..}] run scoreboard players set @e[name=dmain] ar_ef_cl_max 50 
execute store result score @e[name=dmain] ar_ef_cl_ent if entity @e[type=area_effect_cloud] 
scoreboard players operation @e[name=dmain] ar_ef_cl_ent -= @e[name=dmain] ar_ef_cl_max 
execute if entity @e[name=dmain,scores={ar_ef_cl_ent=1..}] run kill @e[type=area_effect_cloud,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={ar_ef_cl_ent=1..}] run say [Minecraft Alive] - Max area_effect_cloud detected. Clearing... 
scoreboard objectives add all_ent dummy 
scoreboard objectives add all_max dummy 
execute unless entity @e[name=dmain,scores={all_max=0..}] run scoreboard players set @e[name=dmain] all_max 600 
execute store result score @e[name=dmain] all_ent if entity @e
scoreboard players operation @e[name=dmain] all_ent -= @e[name=dmain] all_max 
execute if entity @e[name=dmain,scores={all_ent=1..}] run forceload remove all
execute if entity @e[name=dmain,scores={all_ent=1..}] as @e[name=waygate] unless entity @s[scores={waygatedone=1..1}] run kill @s
execute if entity @e[name=dmain,scores={all_ent=1..}] run say [Minecraft Alive] - Max Entity Count Reached. Resetting ForceLoadedChunks...
scoreboard objectives add arrow_ent dummy 
scoreboard objectives add arrow_max dummy 
execute unless entity @e[name=dmain,scores={arrow_max=0..}] run scoreboard players set @e[name=dmain] arrow_max 50 
execute store result score @e[name=dmain] arrow_ent if entity @e[type=arrow] 
scoreboard players operation @e[name=dmain] arrow_ent -= @e[name=dmain] arrow_max 
execute if entity @e[name=dmain,scores={arrow_ent=1..}] run kill @e[type=arrow,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={arrow_ent=1..}] run say [Minecraft Alive] - Max arrow detected. Clearing... 
scoreboard objectives add cave_spider_ent dummy 
scoreboard objectives add cave_spider_max dummy 
execute unless entity @e[name=dmain,scores={cave_spider_max=0..}] run scoreboard players set @e[name=dmain] cave_spider_max 50 
execute store result score @e[name=dmain] cave_spider_ent if entity @e[type=cave_spider] 
scoreboard players operation @e[name=dmain] cave_spider_ent -= @e[name=dmain] cave_spider_max 
execute if entity @e[name=dmain,scores={cave_spider_ent=1..}] run kill @e[type=cave_spider,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={cave_spider_ent=1..}] run say [Minecraft Alive] - Max cave_spider detected. Clearing... 
scoreboard objectives add cod_ent dummy 
scoreboard objectives add cod_max dummy 
execute unless entity @e[name=dmain,scores={cod_max=0..}] run scoreboard players set @e[name=dmain] cod_max 50 
execute store result score @e[name=dmain] cod_ent if entity @e[type=cod] 
scoreboard players operation @e[name=dmain] cod_ent -= @e[name=dmain] cod_max 
execute if entity @e[name=dmain,scores={cod_ent=1..}] run kill @e[type=cod,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={cod_ent=1..}] run say [Minecraft Alive] - Max cod detected. Clearing... 
scoreboard objectives add drag_fire_ent dummy 
scoreboard objectives add drag_fire_max dummy 
execute unless entity @e[name=dmain,scores={drag_fire_max=0..}] run scoreboard players set @e[name=dmain] drag_fire_max 50 
execute store result score @e[name=dmain] drag_fire_ent if entity @e[type=dragon_fireball] 
scoreboard players operation @e[name=dmain] drag_fire_ent -= @e[name=dmain] drag_fire_max 
execute if entity @e[name=dmain,scores={drag_fire_ent=1..}] run kill @e[type=dragon_fireball,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={drag_fire_ent=1..}] run say [Minecraft Alive] - Max dragon_fireball detected. Clearing... 
scoreboard objectives add enderman_ent dummy 
scoreboard objectives add enderman_max dummy 
execute unless entity @e[name=dmain,scores={enderman_max=0..}] run scoreboard players set @e[name=dmain] enderman_max 50 
execute store result score @e[name=dmain] enderman_ent if entity @e[type=enderman] 
scoreboard players operation @e[name=dmain] enderman_ent -= @e[name=dmain] enderman_max 
execute if entity @e[name=dmain,scores={enderman_ent=1..}] run kill @e[type=enderman,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={enderman_ent=1..}] run say [Minecraft Alive] - Max enderman detected. Clearing... 
scoreboard objectives add endermite_ent dummy 
scoreboard objectives add endermite_max dummy 
execute unless entity @e[name=dmain,scores={endermite_max=0..}] run scoreboard players set @e[name=dmain] endermite_max 50 
execute store result score @e[name=dmain] endermite_ent if entity @e[type=endermite] 
scoreboard players operation @e[name=dmain] endermite_ent -= @e[name=dmain] endermite_max 
execute if entity @e[name=dmain,scores={endermite_ent=1..}] run kill @e[type=endermite,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={endermite_ent=1..}] run say [Minecraft Alive] - Max endermite detected. Clearing... 
scoreboard objectives add evoker_ent dummy 
scoreboard objectives add evoker_max dummy 
execute unless entity @e[name=dmain,scores={evoker_max=0..}] run scoreboard players set @e[name=dmain] evoker_max 50 
execute store result score @e[name=dmain] evoker_ent if entity @e[type=evoker] 
scoreboard players operation @e[name=dmain] evoker_ent -= @e[name=dmain] evoker_max 
execute if entity @e[name=dmain,scores={evoker_ent=1..}] run kill @e[type=evoker,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={evoker_ent=1..}] run say [Minecraft Alive] - Max evoker detected. Clearing... 
scoreboard objectives add evoker_fangs_ent dummy 
scoreboard objectives add evoker_fangs_max dummy 
execute unless entity @e[name=dmain,scores={evoker_fangs_max=0..}] run scoreboard players set @e[name=dmain] evoker_fangs_max 50 
execute store result score @e[name=dmain] evoker_fangs_ent if entity @e[type=evoker_fangs] 
scoreboard players operation @e[name=dmain] evoker_fangs_ent -= @e[name=dmain] evoker_fangs_max 
execute if entity @e[name=dmain,scores={evoker_fangs_ent=1..}] run kill @e[type=evoker_fangs,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={evoker_fangs_ent=1..}] run say [Minecraft Alive] - Max evoker_fangs detected. Clearing... 
scoreboard objectives add exper_orb_ent dummy 
scoreboard objectives add exper_orb_max dummy 
execute unless entity @e[name=dmain,scores={exper_orb_max=0..}] run scoreboard players set @e[name=dmain] exper_orb_max 50 
execute store result score @e[name=dmain] exper_orb_ent if entity @e[type=experience_orb] 
scoreboard players operation @e[name=dmain] exper_orb_ent -= @e[name=dmain] exper_orb_max 
execute if entity @e[name=dmain,scores={exper_orb_ent=1..}] run kill @e[type=experience_orb,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={exper_orb_ent=1..}] run say [Minecraft Alive] - Max experience_orb detected. Clearing... 
scoreboard objectives add eye_of_end_ent dummy 
scoreboard objectives add eye_of_end_max dummy 
execute unless entity @e[name=dmain,scores={eye_of_end_max=0..}] run scoreboard players set @e[name=dmain] eye_of_end_max 50 
execute store result score @e[name=dmain] eye_of_end_ent if entity @e[type=eye_of_ender] 
scoreboard players operation @e[name=dmain] eye_of_end_ent -= @e[name=dmain] eye_of_end_max 
execute if entity @e[name=dmain,scores={eye_of_end_ent=1..}] run kill @e[type=eye_of_ender,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={eye_of_end_ent=1..}] run say [Minecraft Alive] - Max eye_of_ender detected. Clearing... 
scoreboard objectives add falling_bl_ent dummy 
scoreboard objectives add falling_bl_max dummy 
execute unless entity @e[name=dmain,scores={falling_bl_max=0..}] run scoreboard players set @e[name=dmain] falling_bl_max 50 
execute store result score @e[name=dmain] falling_bl_ent if entity @e[type=falling_block] 
scoreboard players operation @e[name=dmain] falling_bl_ent -= @e[name=dmain] falling_bl_max 
execute if entity @e[name=dmain,scores={falling_bl_ent=1..}] run kill @e[type=falling_block,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={falling_bl_ent=1..}] run say [Minecraft Alive] - Max falling_block detected. Clearing... 
scoreboard objectives add hoglin_ent dummy 
scoreboard objectives add hoglin_max dummy 
execute unless entity @e[name=dmain,scores={hoglin_max=0..}] run scoreboard players set @e[name=dmain] hoglin_max 50 
execute store result score @e[name=dmain] hoglin_ent if entity @e[type=hoglin] 
scoreboard players operation @e[name=dmain] hoglin_ent -= @e[name=dmain] hoglin_max 
execute if entity @e[name=dmain,scores={hoglin_ent=1..}] run kill @e[type=hoglin,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={hoglin_ent=1..}] run say [Minecraft Alive] - Max hoglin detected. Clearing... 
scoreboard objectives add illusioner_ent dummy 
scoreboard objectives add illusioner_max dummy 
execute unless entity @e[name=dmain,scores={illusioner_max=0..}] run scoreboard players set @e[name=dmain] illusioner_max 50 
execute store result score @e[name=dmain] illusioner_ent if entity @e[type=illusioner] 
scoreboard players operation @e[name=dmain] illusioner_ent -= @e[name=dmain] illusioner_max 
execute if entity @e[name=dmain,scores={illusioner_ent=1..}] run kill @e[type=illusioner,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={illusioner_ent=1..}] run say [Minecraft Alive] - Max illusioner detected. Clearing... 
scoreboard objectives add item_ent dummy 
scoreboard objectives add item_max dummy 
execute unless entity @e[name=dmain,scores={item_max=0..}] run scoreboard players set @e[name=dmain] item_max 100
execute store result score @e[name=dmain] item_ent if entity @e[type=item] 
scoreboard players operation @e[name=dmain] item_ent -= @e[name=dmain] item_max 
execute if entity @e[name=dmain,scores={item_ent=1..}] run kill @e[type=item,limit=15,sort=random,tag=!playerfound] 
execute if entity @e[name=dmain,scores={item_ent=1..}] run say [Minecraft Alive] - Max item detected. Clearing... 
scoreboard objectives add fireball_ent dummy 
scoreboard objectives add fireball_max dummy 
execute unless entity @e[name=dmain,scores={fireball_max=0..}] run scoreboard players set @e[name=dmain] fireball_max 50 
execute store result score @e[name=dmain] fireball_ent if entity @e[type=fireball] 
scoreboard players operation @e[name=dmain] fireball_ent -= @e[name=dmain] fireball_max 
execute if entity @e[name=dmain,scores={fireball_ent=1..}] run kill @e[type=fireball,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={fireball_ent=1..}] run say [Minecraft Alive] - Max fireball detected. Clearing... 
scoreboard objectives add llama_spit_ent dummy 
scoreboard objectives add llama_spit_max dummy 
execute unless entity @e[name=dmain,scores={llama_spit_max=0..}] run scoreboard players set @e[name=dmain] llama_spit_max 50 
execute store result score @e[name=dmain] llama_spit_ent if entity @e[type=llama_spit] 
scoreboard players operation @e[name=dmain] llama_spit_ent -= @e[name=dmain] llama_spit_max 
execute if entity @e[name=dmain,scores={llama_spit_ent=1..}] run kill @e[type=llama_spit,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={llama_spit_ent=1..}] run say [Minecraft Alive] - Max llama_spit detected. Clearing... 
scoreboard objectives add magma_cube_ent dummy 
scoreboard objectives add magma_cube_max dummy 
execute unless entity @e[name=dmain,scores={magma_cube_max=0..}] run scoreboard players set @e[name=dmain] magma_cube_max 50 
execute store result score @e[name=dmain] magma_cube_ent if entity @e[type=magma_cube] 
scoreboard players operation @e[name=dmain] magma_cube_ent -= @e[name=dmain] magma_cube_max 
execute if entity @e[name=dmain,scores={magma_cube_ent=1..}] run kill @e[type=magma_cube,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={magma_cube_ent=1..}] run say [Minecraft Alive] - Max magma_cube detected. Clearing... 
scoreboard objectives add phantom_ent dummy 
scoreboard objectives add phantom_max dummy 
execute unless entity @e[name=dmain,scores={phantom_max=0..}] run scoreboard players set @e[name=dmain] phantom_max 50 
execute store result score @e[name=dmain] phantom_ent if entity @e[type=phantom] 
scoreboard players operation @e[name=dmain] phantom_ent -= @e[name=dmain] phantom_max 
execute if entity @e[name=dmain,scores={phantom_ent=1..}] run kill @e[type=phantom,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={phantom_ent=1..}] run say [Minecraft Alive] - Max phantom detected. Clearing... 
scoreboard objectives add pig_ent dummy 
scoreboard objectives add pig_max dummy 
execute unless entity @e[name=dmain,scores={pig_max=0..}] run scoreboard players set @e[name=dmain] pig_max 50 
execute store result score @e[name=dmain] pig_ent if entity @e[type=pig] 
scoreboard players operation @e[name=dmain] pig_ent -= @e[name=dmain] pig_max 
execute if entity @e[name=dmain,scores={pig_ent=1..}] run kill @e[type=pig,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={pig_ent=1..}] run say [Minecraft Alive] - Max pig detected. Clearing... 
scoreboard objectives add piglin_ent dummy 
scoreboard objectives add piglin_max dummy 
execute unless entity @e[name=dmain,scores={piglin_max=0..}] run scoreboard players set @e[name=dmain] piglin_max 50 
execute store result score @e[name=dmain] piglin_ent if entity @e[type=piglin] 
scoreboard players operation @e[name=dmain] piglin_ent -= @e[name=dmain] piglin_max 
execute if entity @e[name=dmain,scores={piglin_ent=1..}] run kill @e[type=piglin,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={piglin_ent=1..}] run say [Minecraft Alive] - Max piglin detected. Clearing... 
scoreboard objectives add piglin_brute_ent dummy 
scoreboard objectives add piglin_brute_max dummy 
execute unless entity @e[name=dmain,scores={piglin_brute_max=0..}] run scoreboard players set @e[name=dmain] piglin_brute_max 50 
execute store result score @e[name=dmain] piglin_brute_ent if entity @e[type=piglin_brute] 
scoreboard players operation @e[name=dmain] piglin_brute_ent -= @e[name=dmain] piglin_brute_max 
execute if entity @e[name=dmain,scores={piglin_brute_ent=1..}] run kill @e[type=piglin_brute,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={piglin_brute_ent=1..}] run say [Minecraft Alive] - Max piglin_brute detected. Clearing... 
scoreboard objectives add pufferfish_ent dummy 
scoreboard objectives add pufferfish_max dummy 
execute unless entity @e[name=dmain,scores={pufferfish_max=0..}] run scoreboard players set @e[name=dmain] pufferfish_max 50 
execute store result score @e[name=dmain] pufferfish_ent if entity @e[type=pufferfish] 
scoreboard players operation @e[name=dmain] pufferfish_ent -= @e[name=dmain] pufferfish_max 
execute if entity @e[name=dmain,scores={pufferfish_ent=1..}] run kill @e[type=pufferfish,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={pufferfish_ent=1..}] run say [Minecraft Alive] - Max pufferfish detected. Clearing... 
scoreboard objectives add salmon_ent dummy 
scoreboard objectives add salmon_max dummy 
execute unless entity @e[name=dmain,scores={salmon_max=0..}] run scoreboard players set @e[name=dmain] salmon_max 50 
execute store result score @e[name=dmain] salmon_ent if entity @e[type=salmon] 
scoreboard players operation @e[name=dmain] salmon_ent -= @e[name=dmain] salmon_max 
execute if entity @e[name=dmain,scores={salmon_ent=1..}] run kill @e[type=salmon,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={salmon_ent=1..}] run say [Minecraft Alive] - Max salmon detected. Clearing... 
scoreboard objectives add shulker_ent dummy 
scoreboard objectives add shulker_max dummy 
execute unless entity @e[name=dmain,scores={shulker_max=0..}] run scoreboard players set @e[name=dmain] shulker_max 50 
execute store result score @e[name=dmain] shulker_ent if entity @e[type=shulker] 
scoreboard players operation @e[name=dmain] shulker_ent -= @e[name=dmain] shulker_max 
execute if entity @e[name=dmain,scores={shulker_ent=1..}] run kill @e[type=shulker,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={shulker_ent=1..}] run say [Minecraft Alive] - Max shulker detected. Clearing... 
scoreboard objectives add shu_bul_ent dummy 
scoreboard objectives add shu_bul_max dummy 
execute unless entity @e[name=dmain,scores={shu_bul_max=0..}] run scoreboard players set @e[name=dmain] shu_bul_max 50 
execute store result score @e[name=dmain] shu_bul_ent if entity @e[type=shulker_bullet] 
scoreboard players operation @e[name=dmain] shu_bul_ent -= @e[name=dmain] shu_bul_max 
execute if entity @e[name=dmain,scores={shu_bul_ent=1..}] run kill @e[type=shulker_bullet,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={shu_bul_ent=1..}] run say [Minecraft Alive] - Max shulker_bullet detected. Clearing... 
scoreboard objectives add silverfish_ent dummy 
scoreboard objectives add silverfish_max dummy 
execute unless entity @e[name=dmain,scores={silverfish_max=0..}] run scoreboard players set @e[name=dmain] silverfish_max 50 
execute store result score @e[name=dmain] silverfish_ent if entity @e[type=silverfish] 
scoreboard players operation @e[name=dmain] silverfish_ent -= @e[name=dmain] silverfish_max 
execute if entity @e[name=dmain,scores={silverfish_ent=1..}] run kill @e[type=silverfish,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={silverfish_ent=1..}] run say [Minecraft Alive] - Max silverfish detected. Clearing... 
scoreboard objectives add skeleton_ent dummy 
scoreboard objectives add skeleton_max dummy 
execute unless entity @e[name=dmain,scores={skeleton_max=0..}] run scoreboard players set @e[name=dmain] skeleton_max 50 
execute store result score @e[name=dmain] skeleton_ent if entity @e[type=skeleton] 
scoreboard players operation @e[name=dmain] skeleton_ent -= @e[name=dmain] skeleton_max 
execute if entity @e[name=dmain,scores={skeleton_ent=1..}] run kill @e[type=skeleton,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={skeleton_ent=1..}] run say [Minecraft Alive] - Max skeleton detected. Clearing... 
scoreboard objectives add slime_ent dummy 
scoreboard objectives add slime_max dummy 
execute unless entity @e[name=dmain,scores={slime_max=0..}] run scoreboard players set @e[name=dmain] slime_max 50 
execute store result score @e[name=dmain] slime_ent if entity @e[type=slime] 
scoreboard players operation @e[name=dmain] slime_ent -= @e[name=dmain] slime_max 
execute if entity @e[name=dmain,scores={slime_ent=1..}] run kill @e[type=slime,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={slime_ent=1..}] run say [Minecraft Alive] - Max slime detected. Clearing... 
scoreboard objectives add smal_fire_ent dummy 
scoreboard objectives add smal_fire_max dummy 
execute unless entity @e[name=dmain,scores={smal_fire_max=0..}] run scoreboard players set @e[name=dmain] smal_fire_max 50 
execute store result score @e[name=dmain] smal_fire_ent if entity @e[type=small_fireball] 
scoreboard players operation @e[name=dmain] smal_fire_ent -= @e[name=dmain] smal_fire_max 
execute if entity @e[name=dmain,scores={smal_fire_ent=1..}] run kill @e[type=small_fireball,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={smal_fire_ent=1..}] run say [Minecraft Alive] - Max small_fireball detected. Clearing... 
scoreboard objectives add snowball_ent dummy 
scoreboard objectives add snowball_max dummy 
execute unless entity @e[name=dmain,scores={snowball_max=0..}] run scoreboard players set @e[name=dmain] snowball_max 50 
execute store result score @e[name=dmain] snowball_ent if entity @e[type=snowball] 
scoreboard players operation @e[name=dmain] snowball_ent -= @e[name=dmain] snowball_max 
execute if entity @e[name=dmain,scores={snowball_ent=1..}] run kill @e[type=snowball,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={snowball_ent=1..}] run say [Minecraft Alive] - Max snowball detected. Clearing... 
scoreboard objectives add spec_ar_ent dummy 
scoreboard objectives add spec_ar_max dummy 
execute unless entity @e[name=dmain,scores={spec_ar_max=0..}] run scoreboard players set @e[name=dmain] spec_ar_max 50 
execute store result score @e[name=dmain] spec_ar_ent if entity @e[type=spectral_arrow] 
scoreboard players operation @e[name=dmain] spec_ar_ent -= @e[name=dmain] spec_ar_max 
execute if entity @e[name=dmain,scores={spec_ar_ent=1..}] run kill @e[type=spectral_arrow,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={spec_ar_ent=1..}] run say [Minecraft Alive] - Max spectral_arrow detected. Clearing... 
scoreboard objectives add spider_ent dummy 
scoreboard objectives add spider_max dummy 
execute unless entity @e[name=dmain,scores={spider_max=0..}] run scoreboard players set @e[name=dmain] spider_max 50 
execute store result score @e[name=dmain] spider_ent if entity @e[type=spider] 
scoreboard players operation @e[name=dmain] spider_ent -= @e[name=dmain] spider_max 
execute if entity @e[name=dmain,scores={spider_ent=1..}] run kill @e[type=spider,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={spider_ent=1..}] run say [Minecraft Alive] - Max spider detected. Clearing... 
scoreboard objectives add stray_ent dummy 
scoreboard objectives add stray_max dummy 
execute unless entity @e[name=dmain,scores={stray_max=0..}] run scoreboard players set @e[name=dmain] stray_max 50 
execute store result score @e[name=dmain] stray_ent if entity @e[type=stray] 
scoreboard players operation @e[name=dmain] stray_ent -= @e[name=dmain] stray_max 
execute if entity @e[name=dmain,scores={stray_ent=1..}] run kill @e[type=stray,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={stray_ent=1..}] run say [Minecraft Alive] - Max stray detected. Clearing... 
scoreboard objectives add egg_ent dummy 
scoreboard objectives add egg_max dummy 
execute unless entity @e[name=dmain,scores={egg_max=0..}] run scoreboard players set @e[name=dmain] egg_max 50 
execute store result score @e[name=dmain] egg_ent if entity @e[type=egg] 
scoreboard players operation @e[name=dmain] egg_ent -= @e[name=dmain] egg_max 
execute if entity @e[name=dmain,scores={egg_ent=1..}] run kill @e[type=egg,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={egg_ent=1..}] run say [Minecraft Alive] - Max egg detected. Clearing... 
scoreboard objectives add ender_pearl_ent dummy 
scoreboard objectives add ender_pearl_max dummy 
execute unless entity @e[name=dmain,scores={ender_pearl_max=0..}] run scoreboard players set @e[name=dmain] ender_pearl_max 50 
execute store result score @e[name=dmain] ender_pearl_ent if entity @e[type=ender_pearl] 
scoreboard players operation @e[name=dmain] ender_pearl_ent -= @e[name=dmain] ender_pearl_max 
execute if entity @e[name=dmain,scores={ender_pearl_ent=1..}] run kill @e[type=ender_pearl,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={ender_pearl_ent=1..}] run say [Minecraft Alive] - Max ender_pearl detected. Clearing... 
scoreboard objectives add exper_bot_ent dummy 
scoreboard objectives add exper_bot_max dummy 
execute unless entity @e[name=dmain,scores={exper_bot_max=0..}] run scoreboard players set @e[name=dmain] exper_bot_max 50 
execute store result score @e[name=dmain] exper_bot_ent if entity @e[type=experience_bottle] 
scoreboard players operation @e[name=dmain] exper_bot_ent -= @e[name=dmain] exper_bot_max 
execute if entity @e[name=dmain,scores={exper_bot_ent=1..}] run kill @e[type=experience_bottle,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={exper_bot_ent=1..}] run say [Minecraft Alive] - Max experience_bottle detected. Clearing... 
scoreboard objectives add potion_ent dummy 
scoreboard objectives add potion_max dummy 
execute unless entity @e[name=dmain,scores={potion_max=0..}] run scoreboard players set @e[name=dmain] potion_max 50 
execute store result score @e[name=dmain] potion_ent if entity @e[type=potion] 
scoreboard players operation @e[name=dmain] potion_ent -= @e[name=dmain] potion_max 
execute if entity @e[name=dmain,scores={potion_ent=1..}] run kill @e[type=potion,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={potion_ent=1..}] run say [Minecraft Alive] - Max potion detected. Clearing... 
scoreboard objectives add vex_ent dummy 
scoreboard objectives add vex_max dummy 
execute unless entity @e[name=dmain,scores={vex_max=0..}] run scoreboard players set @e[name=dmain] vex_max 50 
execute store result score @e[name=dmain] vex_ent if entity @e[type=vex] 
scoreboard players operation @e[name=dmain] vex_ent -= @e[name=dmain] vex_max 
execute if entity @e[name=dmain,scores={vex_ent=1..}] run kill @e[type=vex,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={vex_ent=1..}] run say [Minecraft Alive] - Max vex detected. Clearing... 
scoreboard objectives add vindicator_ent dummy 
scoreboard objectives add vindicator_max dummy 
execute unless entity @e[name=dmain,scores={vindicator_max=0..}] run scoreboard players set @e[name=dmain] vindicator_max 50 
execute store result score @e[name=dmain] vindicator_ent if entity @e[type=vindicator] 
scoreboard players operation @e[name=dmain] vindicator_ent -= @e[name=dmain] vindicator_max 
execute if entity @e[name=dmain,scores={vindicator_ent=1..}] run kill @e[type=vindicator,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={vindicator_ent=1..}] run say [Minecraft Alive] - Max vindicator detected. Clearing... 
scoreboard objectives add witch_ent dummy 
scoreboard objectives add witch_max dummy 
execute unless entity @e[name=dmain,scores={witch_max=0..}] run scoreboard players set @e[name=dmain] witch_max 50 
execute store result score @e[name=dmain] witch_ent if entity @e[type=witch] 
scoreboard players operation @e[name=dmain] witch_ent -= @e[name=dmain] witch_max 
execute if entity @e[name=dmain,scores={witch_ent=1..}] run kill @e[type=witch,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={witch_ent=1..}] run say [Minecraft Alive] - Max witch detected. Clearing... 
scoreboard objectives add with_skul_ent dummy 
scoreboard objectives add with_skul_max dummy 
execute unless entity @e[name=dmain,scores={with_skul_max=0..}] run scoreboard players set @e[name=dmain] with_skul_max 50 
execute store result score @e[name=dmain] with_skul_ent if entity @e[type=wither_skull] 
scoreboard players operation @e[name=dmain] with_skul_ent -= @e[name=dmain] with_skul_max 
execute if entity @e[name=dmain,scores={with_skul_ent=1..}] run kill @e[type=wither_skull,limit=5,sort=random] 
# execute if entity @e[name=dmain,scores={with_skul_ent=1..}] run say [Minecraft Alive] - Max wither_skull detected. Clearing... 
scoreboard objectives add zoglin_ent dummy 
scoreboard objectives add zoglin_max dummy 
execute unless entity @e[name=dmain,scores={zoglin_max=0..}] run scoreboard players set @e[name=dmain] zoglin_max 50 
execute store result score @e[name=dmain] zoglin_ent if entity @e[type=zoglin] 
scoreboard players operation @e[name=dmain] zoglin_ent -= @e[name=dmain] zoglin_max 
execute if entity @e[name=dmain,scores={zoglin_ent=1..}] run kill @e[type=zoglin,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={zoglin_ent=1..}] run say [Minecraft Alive] - Max zoglin detected. Clearing... 
scoreboard objectives add zombie_ent dummy 
scoreboard objectives add zombie_max dummy 
execute unless entity @e[name=dmain,scores={zombie_max=0..}] run scoreboard players set @e[name=dmain] zombie_max 50 
execute store result score @e[name=dmain] zombie_ent if entity @e[type=zombie] 
scoreboard players operation @e[name=dmain] zombie_ent -= @e[name=dmain] zombie_max 
execute if entity @e[name=dmain,scores={zombie_ent=1..}] run kill @e[type=zombie,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={zombie_ent=1..}] run say [Minecraft Alive] - Max zombie detected. Clearing... 
scoreboard objectives add zom_pig_ent dummy 
scoreboard objectives add zom_pig_max dummy 
execute unless entity @e[name=dmain,scores={zom_pig_max=0..}] run scoreboard players set @e[name=dmain] zom_pig_max 50 
execute store result score @e[name=dmain] zom_pig_ent if entity @e[type=zombified_piglin] 
scoreboard players operation @e[name=dmain] zom_pig_ent -= @e[name=dmain] zom_pig_max 
execute if entity @e[name=dmain,scores={zom_pig_ent=1..}] run kill @e[type=zombified_piglin,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={zom_pig_ent=1..}] run say [Minecraft Alive] - Max zombified_piglin detected. Clearing... 
scoreboard objectives add fish_bob_ent dummy 
scoreboard objectives add fish_bob_max dummy 
execute unless entity @e[name=dmain,scores={fish_bob_max=0..}] run scoreboard players set @e[name=dmain] fish_bob_max 50 
execute store result score @e[name=dmain] fish_bob_ent if entity @e[type=fishing_bobber] 
scoreboard players operation @e[name=dmain] fish_bob_ent -= @e[name=dmain] fish_bob_max 
execute if entity @e[name=dmain,scores={fish_bob_ent=1..}] run kill @e[type=fishing_bobber,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={fish_bob_ent=1..}] run say [Minecraft Alive] - Max fishing_bobber detected. Clearing... 
scoreboard objectives add sawayig_ent dummy 
scoreboard objectives add sawayig_max dummy 
execute unless entity @e[name=dmain,scores={sawayig_max=0..}] run scoreboard players set @e[name=dmain] sawayig_max 50 
execute store result score @e[name=dmain] sawayig_ent if entity @e[tag=sawayig] 
scoreboard players operation @e[name=dmain] sawayig_ent -= @e[name=dmain] sawayig_max 
execute if entity @e[name=dmain,scores={sawayig_ent=1..}] run kill @e[tag=sawayig,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={sawayig_ent=1..}] run say [Minecraft Alive] - Max Sawayig's detected. Clearing...
scoreboard objectives add blight_ent dummy 
scoreboard objectives add blight_max dummy 
execute unless entity @e[name=dmain,scores={blight_max=0..}] run scoreboard players set @e[name=dmain] blight_max 50 
execute store result score @e[name=dmain] blight_ent if entity @e[tag=blight] 
scoreboard players operation @e[name=dmain] blight_ent -= @e[name=dmain] blight_max 
execute if entity @e[name=dmain,scores={blight_ent=1..}] run kill @e[tag=blight,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={blight_ent=1..}] run say [Minecraft Alive] - Max blight's detected. Clearing...
scoreboard objectives add machin_shin_ent dummy 
scoreboard objectives add machin_shin_max dummy 
execute unless entity @e[name=dmain,scores={machin_shin_max=0..}] run scoreboard players set @e[name=dmain] machin_shin_max 20 
execute store result score @e[name=dmain] machin_shin_ent if entity @e[name=machin_shin] 
scoreboard players operation @e[name=dmain] machin_shin_ent -= @e[name=dmain] machin_shin_max 
execute if entity @e[name=dmain,scores={machin_shin_ent=1..}] run kill @e[name=machin_shin,limit=5,sort=random] 
execute if entity @e[name=dmain,scores={machin_shin_ent=1..}] run say [Minecraft Alive] - Max Machin Shin activity detected. Clearing...