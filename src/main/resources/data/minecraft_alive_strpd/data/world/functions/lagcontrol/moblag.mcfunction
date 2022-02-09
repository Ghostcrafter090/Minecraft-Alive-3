
execute at @a run tag @e[type=item,distance=0..20] add playerfound
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/1
execute unless entity @e[name=dmain,scores={ar_ef_cl_max=0..}] run scoreboard players set @e[name=dmain] ar_ef_cl_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/3
execute if entity @e[name=dmain,scores={ar_ef_cl_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/4
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/5
execute unless entity @e[name=dmain,scores={all_max=0..}] run scoreboard players set @e[name=dmain] all_max 600 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/7
execute if entity @e[name=dmain,scores={all_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/8
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/9
execute unless entity @e[name=dmain,scores={arrow_max=0..}] run scoreboard players set @e[name=dmain] arrow_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/11
execute if entity @e[name=dmain,scores={arrow_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/12
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/13
execute unless entity @e[name=dmain,scores={cave_spider_max=0..}] run scoreboard players set @e[name=dmain] cave_spider_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/15
execute if entity @e[name=dmain,scores={cave_spider_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/16
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/17
execute unless entity @e[name=dmain,scores={cod_max=0..}] run scoreboard players set @e[name=dmain] cod_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/19
execute if entity @e[name=dmain,scores={cod_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/20
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/21
execute unless entity @e[name=dmain,scores={drag_fire_max=0..}] run scoreboard players set @e[name=dmain] drag_fire_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/23
execute if entity @e[name=dmain,scores={drag_fire_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/24
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/25
execute unless entity @e[name=dmain,scores={enderman_max=0..}] run scoreboard players set @e[name=dmain] enderman_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/27
execute if entity @e[name=dmain,scores={enderman_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/28
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/29
execute unless entity @e[name=dmain,scores={endermite_max=0..}] run scoreboard players set @e[name=dmain] endermite_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/31
execute if entity @e[name=dmain,scores={endermite_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/32
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/33
execute unless entity @e[name=dmain,scores={evoker_max=0..}] run scoreboard players set @e[name=dmain] evoker_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/35
execute if entity @e[name=dmain,scores={evoker_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/36
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/37
execute unless entity @e[name=dmain,scores={evoker_fangs_max=0..}] run scoreboard players set @e[name=dmain] evoker_fangs_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/39
execute if entity @e[name=dmain,scores={evoker_fangs_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/40
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/41
execute unless entity @e[name=dmain,scores={exper_orb_max=0..}] run scoreboard players set @e[name=dmain] exper_orb_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/43
execute if entity @e[name=dmain,scores={exper_orb_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/44
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/45
execute unless entity @e[name=dmain,scores={eye_of_end_max=0..}] run scoreboard players set @e[name=dmain] eye_of_end_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/47
execute if entity @e[name=dmain,scores={eye_of_end_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/48
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/49
execute unless entity @e[name=dmain,scores={falling_bl_max=0..}] run scoreboard players set @e[name=dmain] falling_bl_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/51
execute if entity @e[name=dmain,scores={falling_bl_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/52
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/53
execute unless entity @e[name=dmain,scores={hoglin_max=0..}] run scoreboard players set @e[name=dmain] hoglin_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/55
execute if entity @e[name=dmain,scores={hoglin_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/56
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/57
execute unless entity @e[name=dmain,scores={illusioner_max=0..}] run scoreboard players set @e[name=dmain] illusioner_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/59
execute if entity @e[name=dmain,scores={illusioner_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/60
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/61
execute unless entity @e[name=dmain,scores={item_max=0..}] run scoreboard players set @e[name=dmain] item_max 100
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/63
execute if entity @e[name=dmain,scores={item_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/64
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/65
execute unless entity @e[name=dmain,scores={fireball_max=0..}] run scoreboard players set @e[name=dmain] fireball_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/67
execute if entity @e[name=dmain,scores={fireball_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/68
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/69
execute unless entity @e[name=dmain,scores={llama_spit_max=0..}] run scoreboard players set @e[name=dmain] llama_spit_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/71
execute if entity @e[name=dmain,scores={llama_spit_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/72
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/73
execute unless entity @e[name=dmain,scores={magma_cube_max=0..}] run scoreboard players set @e[name=dmain] magma_cube_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/75
execute if entity @e[name=dmain,scores={magma_cube_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/76
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/77
execute unless entity @e[name=dmain,scores={phantom_max=0..}] run scoreboard players set @e[name=dmain] phantom_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/79
execute if entity @e[name=dmain,scores={phantom_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/80
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/81
execute unless entity @e[name=dmain,scores={pig_max=0..}] run scoreboard players set @e[name=dmain] pig_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/83
execute if entity @e[name=dmain,scores={pig_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/84
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/85
execute unless entity @e[name=dmain,scores={piglin_max=0..}] run scoreboard players set @e[name=dmain] piglin_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/87
execute if entity @e[name=dmain,scores={piglin_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/88
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/89
execute unless entity @e[name=dmain,scores={piglin_brute_max=0..}] run scoreboard players set @e[name=dmain] piglin_brute_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/91
execute if entity @e[name=dmain,scores={piglin_brute_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/92
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/93
execute unless entity @e[name=dmain,scores={pufferfish_max=0..}] run scoreboard players set @e[name=dmain] pufferfish_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/95
execute if entity @e[name=dmain,scores={pufferfish_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/96
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/97
execute unless entity @e[name=dmain,scores={salmon_max=0..}] run scoreboard players set @e[name=dmain] salmon_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/99
execute if entity @e[name=dmain,scores={salmon_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/100
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/101
execute unless entity @e[name=dmain,scores={shulker_max=0..}] run scoreboard players set @e[name=dmain] shulker_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/103
execute if entity @e[name=dmain,scores={shulker_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/104
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/105
execute unless entity @e[name=dmain,scores={shu_bul_max=0..}] run scoreboard players set @e[name=dmain] shu_bul_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/107
execute if entity @e[name=dmain,scores={shu_bul_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/108
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/109
execute unless entity @e[name=dmain,scores={silverfish_max=0..}] run scoreboard players set @e[name=dmain] silverfish_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/111
execute if entity @e[name=dmain,scores={silverfish_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/112
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/113
execute unless entity @e[name=dmain,scores={skeleton_max=0..}] run scoreboard players set @e[name=dmain] skeleton_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/115
execute if entity @e[name=dmain,scores={skeleton_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/116
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/117
execute unless entity @e[name=dmain,scores={slime_max=0..}] run scoreboard players set @e[name=dmain] slime_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/119
execute if entity @e[name=dmain,scores={slime_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/120
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/121
execute unless entity @e[name=dmain,scores={smal_fire_max=0..}] run scoreboard players set @e[name=dmain] smal_fire_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/123
execute if entity @e[name=dmain,scores={smal_fire_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/124
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/125
execute unless entity @e[name=dmain,scores={snowball_max=0..}] run scoreboard players set @e[name=dmain] snowball_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/127
execute if entity @e[name=dmain,scores={snowball_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/128
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/129
execute unless entity @e[name=dmain,scores={spec_ar_max=0..}] run scoreboard players set @e[name=dmain] spec_ar_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/131
execute if entity @e[name=dmain,scores={spec_ar_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/132
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/133
execute unless entity @e[name=dmain,scores={spider_max=0..}] run scoreboard players set @e[name=dmain] spider_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/135
execute if entity @e[name=dmain,scores={spider_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/136
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/137
execute unless entity @e[name=dmain,scores={stray_max=0..}] run scoreboard players set @e[name=dmain] stray_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/139
execute if entity @e[name=dmain,scores={stray_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/140
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/141
execute unless entity @e[name=dmain,scores={egg_max=0..}] run scoreboard players set @e[name=dmain] egg_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/143
execute if entity @e[name=dmain,scores={egg_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/144
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/145
execute unless entity @e[name=dmain,scores={ender_pearl_max=0..}] run scoreboard players set @e[name=dmain] ender_pearl_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/147
execute if entity @e[name=dmain,scores={ender_pearl_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/148
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/149
execute unless entity @e[name=dmain,scores={exper_bot_max=0..}] run scoreboard players set @e[name=dmain] exper_bot_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/151
execute if entity @e[name=dmain,scores={exper_bot_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/152
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/153
execute unless entity @e[name=dmain,scores={potion_max=0..}] run scoreboard players set @e[name=dmain] potion_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/155
execute if entity @e[name=dmain,scores={potion_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/156
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/157
execute unless entity @e[name=dmain,scores={vex_max=0..}] run scoreboard players set @e[name=dmain] vex_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/159
execute if entity @e[name=dmain,scores={vex_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/160
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/161
execute unless entity @e[name=dmain,scores={vindicator_max=0..}] run scoreboard players set @e[name=dmain] vindicator_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/163
execute if entity @e[name=dmain,scores={vindicator_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/164
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/165
execute unless entity @e[name=dmain,scores={witch_max=0..}] run scoreboard players set @e[name=dmain] witch_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/167
execute if entity @e[name=dmain,scores={witch_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/168
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/169
execute unless entity @e[name=dmain,scores={with_skul_max=0..}] run scoreboard players set @e[name=dmain] with_skul_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/171
execute if entity @e[name=dmain,scores={with_skul_ent=1..}] run kill @e[type=wither_skull,limit=5,sort=random] 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/173
execute unless entity @e[name=dmain,scores={zoglin_max=0..}] run scoreboard players set @e[name=dmain] zoglin_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/175
execute if entity @e[name=dmain,scores={zoglin_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/176
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/177
execute unless entity @e[name=dmain,scores={zombie_max=0..}] run scoreboard players set @e[name=dmain] zombie_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/179
execute if entity @e[name=dmain,scores={zombie_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/180
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/181
execute unless entity @e[name=dmain,scores={zom_pig_max=0..}] run scoreboard players set @e[name=dmain] zom_pig_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/183
execute if entity @e[name=dmain,scores={zom_pig_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/184
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/185
execute unless entity @e[name=dmain,scores={fish_bob_max=0..}] run scoreboard players set @e[name=dmain] fish_bob_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/187
execute if entity @e[name=dmain,scores={fish_bob_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/188
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/189
execute unless entity @e[name=dmain,scores={sawayig_max=0..}] run scoreboard players set @e[name=dmain] sawayig_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/191
execute if entity @e[name=dmain,scores={sawayig_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/192
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/193
execute unless entity @e[name=dmain,scores={blight_max=0..}] run scoreboard players set @e[name=dmain] blight_max 50 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/195
execute if entity @e[name=dmain,scores={blight_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/196
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/197
execute unless entity @e[name=dmain,scores={machin_shin_max=0..}] run scoreboard players set @e[name=dmain] machin_shin_max 20 
function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/199
execute if entity @e[name=dmain,scores={machin_shin_ent=1..}] run function minecraft_alive_strpd:data/world/functions/lagcontrol/moblag_/200