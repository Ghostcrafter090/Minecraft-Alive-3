
execute at @a run tag @e[type=item,distance=0..20] add playerfound
function world:lagcontrol/moblagold_/1
execute unless entity @e[name=dmain,scores={ar_ef_cl_max=0..}] run scoreboard players set @e[name=dmain] ar_ef_cl_max 50 
function world:lagcontrol/moblagold_/3
execute if entity @e[name=dmain,scores={ar_ef_cl_ent=1..}] run function world:lagcontrol/moblagold_/4
function world:lagcontrol/moblagold_/5
execute unless entity @e[name=dmain,scores={all_max=0..}] run scoreboard players set @e[name=dmain] all_max 600 
function world:lagcontrol/moblagold_/7
execute if entity @e[name=dmain,scores={all_ent=1..}] run function world:lagcontrol/moblagold_/8
function world:lagcontrol/moblagold_/9
execute unless entity @e[name=dmain,scores={arrow_max=0..}] run scoreboard players set @e[name=dmain] arrow_max 50 
function world:lagcontrol/moblagold_/11
execute if entity @e[name=dmain,scores={arrow_ent=1..}] run function world:lagcontrol/moblagold_/12
function world:lagcontrol/moblagold_/13
execute unless entity @e[name=dmain,scores={cave_spider_max=0..}] run scoreboard players set @e[name=dmain] cave_spider_max 50 
function world:lagcontrol/moblagold_/15
execute if entity @e[name=dmain,scores={cave_spider_ent=1..}] run function world:lagcontrol/moblagold_/16
function world:lagcontrol/moblagold_/17
execute unless entity @e[name=dmain,scores={cod_max=0..}] run scoreboard players set @e[name=dmain] cod_max 50 
function world:lagcontrol/moblagold_/19
execute if entity @e[name=dmain,scores={cod_ent=1..}] run function world:lagcontrol/moblagold_/20
function world:lagcontrol/moblagold_/21
execute unless entity @e[name=dmain,scores={drag_fire_max=0..}] run scoreboard players set @e[name=dmain] drag_fire_max 50 
function world:lagcontrol/moblagold_/23
execute if entity @e[name=dmain,scores={drag_fire_ent=1..}] run function world:lagcontrol/moblagold_/24
function world:lagcontrol/moblagold_/25
execute unless entity @e[name=dmain,scores={enderman_max=0..}] run scoreboard players set @e[name=dmain] enderman_max 50 
function world:lagcontrol/moblagold_/27
execute if entity @e[name=dmain,scores={enderman_ent=1..}] run function world:lagcontrol/moblagold_/28
function world:lagcontrol/moblagold_/29
execute unless entity @e[name=dmain,scores={endermite_max=0..}] run scoreboard players set @e[name=dmain] endermite_max 50 
function world:lagcontrol/moblagold_/31
execute if entity @e[name=dmain,scores={endermite_ent=1..}] run function world:lagcontrol/moblagold_/32
function world:lagcontrol/moblagold_/33
execute unless entity @e[name=dmain,scores={evoker_max=0..}] run scoreboard players set @e[name=dmain] evoker_max 50 
function world:lagcontrol/moblagold_/35
execute if entity @e[name=dmain,scores={evoker_ent=1..}] run function world:lagcontrol/moblagold_/36
function world:lagcontrol/moblagold_/37
execute unless entity @e[name=dmain,scores={evoker_fangs_max=0..}] run scoreboard players set @e[name=dmain] evoker_fangs_max 50 
function world:lagcontrol/moblagold_/39
execute if entity @e[name=dmain,scores={evoker_fangs_ent=1..}] run function world:lagcontrol/moblagold_/40
function world:lagcontrol/moblagold_/41
execute unless entity @e[name=dmain,scores={exper_orb_max=0..}] run scoreboard players set @e[name=dmain] exper_orb_max 50 
function world:lagcontrol/moblagold_/43
execute if entity @e[name=dmain,scores={exper_orb_ent=1..}] run function world:lagcontrol/moblagold_/44
function world:lagcontrol/moblagold_/45
execute unless entity @e[name=dmain,scores={eye_of_end_max=0..}] run scoreboard players set @e[name=dmain] eye_of_end_max 50 
function world:lagcontrol/moblagold_/47
execute if entity @e[name=dmain,scores={eye_of_end_ent=1..}] run function world:lagcontrol/moblagold_/48
function world:lagcontrol/moblagold_/49
execute unless entity @e[name=dmain,scores={falling_bl_max=0..}] run scoreboard players set @e[name=dmain] falling_bl_max 50 
function world:lagcontrol/moblagold_/51
execute if entity @e[name=dmain,scores={falling_bl_ent=1..}] run function world:lagcontrol/moblagold_/52
function world:lagcontrol/moblagold_/53
execute unless entity @e[name=dmain,scores={hoglin_max=0..}] run scoreboard players set @e[name=dmain] hoglin_max 50 
function world:lagcontrol/moblagold_/55
execute if entity @e[name=dmain,scores={hoglin_ent=1..}] run function world:lagcontrol/moblagold_/56
function world:lagcontrol/moblagold_/57
execute unless entity @e[name=dmain,scores={illusioner_max=0..}] run scoreboard players set @e[name=dmain] illusioner_max 50 
function world:lagcontrol/moblagold_/59
execute if entity @e[name=dmain,scores={illusioner_ent=1..}] run function world:lagcontrol/moblagold_/60
function world:lagcontrol/moblagold_/61
execute unless entity @e[name=dmain,scores={item_max=0..}] run scoreboard players set @e[name=dmain] item_max 100
function world:lagcontrol/moblagold_/63
execute if entity @e[name=dmain,scores={item_ent=1..}] run function world:lagcontrol/moblagold_/64
function world:lagcontrol/moblagold_/65
execute unless entity @e[name=dmain,scores={fireball_max=0..}] run scoreboard players set @e[name=dmain] fireball_max 50 
function world:lagcontrol/moblagold_/67
execute if entity @e[name=dmain,scores={fireball_ent=1..}] run function world:lagcontrol/moblagold_/68
function world:lagcontrol/moblagold_/69
execute unless entity @e[name=dmain,scores={llama_spit_max=0..}] run scoreboard players set @e[name=dmain] llama_spit_max 50 
function world:lagcontrol/moblagold_/71
execute if entity @e[name=dmain,scores={llama_spit_ent=1..}] run function world:lagcontrol/moblagold_/72
function world:lagcontrol/moblagold_/73
execute unless entity @e[name=dmain,scores={magma_cube_max=0..}] run scoreboard players set @e[name=dmain] magma_cube_max 50 
function world:lagcontrol/moblagold_/75
execute if entity @e[name=dmain,scores={magma_cube_ent=1..}] run function world:lagcontrol/moblagold_/76
function world:lagcontrol/moblagold_/77
execute unless entity @e[name=dmain,scores={phantom_max=0..}] run scoreboard players set @e[name=dmain] phantom_max 50 
function world:lagcontrol/moblagold_/79
execute if entity @e[name=dmain,scores={phantom_ent=1..}] run function world:lagcontrol/moblagold_/80
function world:lagcontrol/moblagold_/81
execute unless entity @e[name=dmain,scores={pig_max=0..}] run scoreboard players set @e[name=dmain] pig_max 50 
function world:lagcontrol/moblagold_/83
execute if entity @e[name=dmain,scores={pig_ent=1..}] run function world:lagcontrol/moblagold_/84
function world:lagcontrol/moblagold_/85
execute unless entity @e[name=dmain,scores={piglin_max=0..}] run scoreboard players set @e[name=dmain] piglin_max 50 
function world:lagcontrol/moblagold_/87
execute if entity @e[name=dmain,scores={piglin_ent=1..}] run function world:lagcontrol/moblagold_/88
function world:lagcontrol/moblagold_/89
execute unless entity @e[name=dmain,scores={piglin_brute_max=0..}] run scoreboard players set @e[name=dmain] piglin_brute_max 50 
function world:lagcontrol/moblagold_/91
execute if entity @e[name=dmain,scores={piglin_brute_ent=1..}] run function world:lagcontrol/moblagold_/92
function world:lagcontrol/moblagold_/93
execute unless entity @e[name=dmain,scores={pufferfish_max=0..}] run scoreboard players set @e[name=dmain] pufferfish_max 50 
function world:lagcontrol/moblagold_/95
execute if entity @e[name=dmain,scores={pufferfish_ent=1..}] run function world:lagcontrol/moblagold_/96
function world:lagcontrol/moblagold_/97
execute unless entity @e[name=dmain,scores={salmon_max=0..}] run scoreboard players set @e[name=dmain] salmon_max 50 
function world:lagcontrol/moblagold_/99
execute if entity @e[name=dmain,scores={salmon_ent=1..}] run function world:lagcontrol/moblagold_/100
function world:lagcontrol/moblagold_/101
execute unless entity @e[name=dmain,scores={shulker_max=0..}] run scoreboard players set @e[name=dmain] shulker_max 50 
function world:lagcontrol/moblagold_/103
execute if entity @e[name=dmain,scores={shulker_ent=1..}] run function world:lagcontrol/moblagold_/104
function world:lagcontrol/moblagold_/105
execute unless entity @e[name=dmain,scores={shu_bul_max=0..}] run scoreboard players set @e[name=dmain] shu_bul_max 50 
function world:lagcontrol/moblagold_/107
execute if entity @e[name=dmain,scores={shu_bul_ent=1..}] run function world:lagcontrol/moblagold_/108
function world:lagcontrol/moblagold_/109
execute unless entity @e[name=dmain,scores={silverfish_max=0..}] run scoreboard players set @e[name=dmain] silverfish_max 50 
function world:lagcontrol/moblagold_/111
execute if entity @e[name=dmain,scores={silverfish_ent=1..}] run function world:lagcontrol/moblagold_/112
function world:lagcontrol/moblagold_/113
execute unless entity @e[name=dmain,scores={skeleton_max=0..}] run scoreboard players set @e[name=dmain] skeleton_max 50 
function world:lagcontrol/moblagold_/115
execute if entity @e[name=dmain,scores={skeleton_ent=1..}] run function world:lagcontrol/moblagold_/116
function world:lagcontrol/moblagold_/117
execute unless entity @e[name=dmain,scores={slime_max=0..}] run scoreboard players set @e[name=dmain] slime_max 50 
function world:lagcontrol/moblagold_/119
execute if entity @e[name=dmain,scores={slime_ent=1..}] run function world:lagcontrol/moblagold_/120
function world:lagcontrol/moblagold_/121
execute unless entity @e[name=dmain,scores={smal_fire_max=0..}] run scoreboard players set @e[name=dmain] smal_fire_max 50 
function world:lagcontrol/moblagold_/123
execute if entity @e[name=dmain,scores={smal_fire_ent=1..}] run function world:lagcontrol/moblagold_/124
function world:lagcontrol/moblagold_/125
execute unless entity @e[name=dmain,scores={snowball_max=0..}] run scoreboard players set @e[name=dmain] snowball_max 50 
function world:lagcontrol/moblagold_/127
execute if entity @e[name=dmain,scores={snowball_ent=1..}] run function world:lagcontrol/moblagold_/128
function world:lagcontrol/moblagold_/129
execute unless entity @e[name=dmain,scores={spec_ar_max=0..}] run scoreboard players set @e[name=dmain] spec_ar_max 50 
function world:lagcontrol/moblagold_/131
execute if entity @e[name=dmain,scores={spec_ar_ent=1..}] run function world:lagcontrol/moblagold_/132
function world:lagcontrol/moblagold_/133
execute unless entity @e[name=dmain,scores={spider_max=0..}] run scoreboard players set @e[name=dmain] spider_max 50 
function world:lagcontrol/moblagold_/135
execute if entity @e[name=dmain,scores={spider_ent=1..}] run function world:lagcontrol/moblagold_/136
function world:lagcontrol/moblagold_/137
execute unless entity @e[name=dmain,scores={stray_max=0..}] run scoreboard players set @e[name=dmain] stray_max 50 
function world:lagcontrol/moblagold_/139
execute if entity @e[name=dmain,scores={stray_ent=1..}] run function world:lagcontrol/moblagold_/140
function world:lagcontrol/moblagold_/141
execute unless entity @e[name=dmain,scores={egg_max=0..}] run scoreboard players set @e[name=dmain] egg_max 50 
function world:lagcontrol/moblagold_/143
execute if entity @e[name=dmain,scores={egg_ent=1..}] run function world:lagcontrol/moblagold_/144
function world:lagcontrol/moblagold_/145
execute unless entity @e[name=dmain,scores={ender_pearl_max=0..}] run scoreboard players set @e[name=dmain] ender_pearl_max 50 
function world:lagcontrol/moblagold_/147
execute if entity @e[name=dmain,scores={ender_pearl_ent=1..}] run function world:lagcontrol/moblagold_/148
function world:lagcontrol/moblagold_/149
execute unless entity @e[name=dmain,scores={exper_bot_max=0..}] run scoreboard players set @e[name=dmain] exper_bot_max 50 
function world:lagcontrol/moblagold_/151
execute if entity @e[name=dmain,scores={exper_bot_ent=1..}] run function world:lagcontrol/moblagold_/152
function world:lagcontrol/moblagold_/153
execute unless entity @e[name=dmain,scores={potion_max=0..}] run scoreboard players set @e[name=dmain] potion_max 50 
function world:lagcontrol/moblagold_/155
execute if entity @e[name=dmain,scores={potion_ent=1..}] run function world:lagcontrol/moblagold_/156
function world:lagcontrol/moblagold_/157
execute unless entity @e[name=dmain,scores={vex_max=0..}] run scoreboard players set @e[name=dmain] vex_max 50 
function world:lagcontrol/moblagold_/159
execute if entity @e[name=dmain,scores={vex_ent=1..}] run function world:lagcontrol/moblagold_/160
function world:lagcontrol/moblagold_/161
execute unless entity @e[name=dmain,scores={vindicator_max=0..}] run scoreboard players set @e[name=dmain] vindicator_max 50 
function world:lagcontrol/moblagold_/163
execute if entity @e[name=dmain,scores={vindicator_ent=1..}] run function world:lagcontrol/moblagold_/164
function world:lagcontrol/moblagold_/165
execute unless entity @e[name=dmain,scores={witch_max=0..}] run scoreboard players set @e[name=dmain] witch_max 50 
function world:lagcontrol/moblagold_/167
execute if entity @e[name=dmain,scores={witch_ent=1..}] run function world:lagcontrol/moblagold_/168
function world:lagcontrol/moblagold_/169
execute unless entity @e[name=dmain,scores={with_skul_max=0..}] run scoreboard players set @e[name=dmain] with_skul_max 50 
function world:lagcontrol/moblagold_/171
execute if entity @e[name=dmain,scores={with_skul_ent=1..}] run function world:lagcontrol/moblagold_/172
function world:lagcontrol/moblagold_/173
execute unless entity @e[name=dmain,scores={zoglin_max=0..}] run scoreboard players set @e[name=dmain] zoglin_max 50 
function world:lagcontrol/moblagold_/175
execute if entity @e[name=dmain,scores={zoglin_ent=1..}] run function world:lagcontrol/moblagold_/176
function world:lagcontrol/moblagold_/177
execute unless entity @e[name=dmain,scores={zombie_max=0..}] run scoreboard players set @e[name=dmain] zombie_max 50 
function world:lagcontrol/moblagold_/179
execute if entity @e[name=dmain,scores={zombie_ent=1..}] run function world:lagcontrol/moblagold_/180
function world:lagcontrol/moblagold_/181
execute unless entity @e[name=dmain,scores={zom_pig_max=0..}] run scoreboard players set @e[name=dmain] zom_pig_max 50 
function world:lagcontrol/moblagold_/183
execute if entity @e[name=dmain,scores={zom_pig_ent=1..}] run function world:lagcontrol/moblagold_/184
function world:lagcontrol/moblagold_/185
execute unless entity @e[name=dmain,scores={fish_bob_max=0..}] run scoreboard players set @e[name=dmain] fish_bob_max 50 
function world:lagcontrol/moblagold_/187
execute if entity @e[name=dmain,scores={fish_bob_ent=1..}] run function world:lagcontrol/moblagold_/188
function world:lagcontrol/moblagold_/189
execute unless entity @e[name=dmain,scores={sawayig_max=0..}] run scoreboard players set @e[name=dmain] sawayig_max 50 
function world:lagcontrol/moblagold_/191
execute if entity @e[name=dmain,scores={sawayig_ent=1..}] run function world:lagcontrol/moblagold_/192
function world:lagcontrol/moblagold_/193
execute unless entity @e[name=dmain,scores={moria_max=0..}] run scoreboard players set @e[name=dmain] moria_max 10
function world:lagcontrol/moblagold_/195
execute if entity @e[name=dmain,scores={moria_ent=1..}] run function world:lagcontrol/moblagold_/196
function world:lagcontrol/moblagold_/197
execute unless entity @e[name=dmain,scores={blight_max=0..}] run scoreboard players set @e[name=dmain] blight_max 50 
function world:lagcontrol/moblagold_/199
execute if entity @e[name=dmain,scores={blight_ent=1..}] run function world:lagcontrol/moblagold_/200
function world:lagcontrol/moblagold_/201
execute unless entity @e[name=dmain,scores={machin_shin_max=0..}] run scoreboard players set @e[name=dmain] machin_shin_max 20 
function world:lagcontrol/moblagold_/203
execute if entity @e[name=dmain,scores={machin_shin_ent=1..}] run function world:lagcontrol/moblagold_/204
function world:lagcontrol/moblagold_/205
execute unless entity @e[name=dmain,scores={storm_max=0..}] run scoreboard players set @e[name=dmain] storm_max 20 
function world:lagcontrol/moblagold_/207
execute if entity @e[name=dmain,scores={storm_ent=1..}] run function world:lagcontrol/moblagold_/208