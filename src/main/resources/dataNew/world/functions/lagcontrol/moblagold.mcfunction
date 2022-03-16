
execute at @a run tag @e[tag=!notick,type=item,distance=0..20] add playerfound
function world:lagcontrol/moblagold.0/1
execute unless entity @e[tag=dmain,scores={ar_ef_cl_max=0..}] run scoreboard players set @e[tag=dmain] ar_ef_cl_max 50 
function world:lagcontrol/moblagold.0/3
execute if entity @e[tag=dmain,scores={ar_ef_cl_ent=1..}] run function world:lagcontrol/moblagold.0/4
function world:lagcontrol/moblagold.0/5
execute unless entity @e[tag=dmain,scores={all_max=0..}] run scoreboard players set @e[tag=dmain] all_max 600 
function world:lagcontrol/moblagold.0/7
execute if entity @e[tag=dmain,scores={all_ent=1..}] run function world:lagcontrol/moblagold.0/8
function world:lagcontrol/moblagold.0/9
execute unless entity @e[tag=dmain,scores={arrow_max=0..}] run scoreboard players set @e[tag=dmain] arrow_max 50 
function world:lagcontrol/moblagold.0/11
execute if entity @e[tag=dmain,scores={arrow_ent=1..}] run function world:lagcontrol/moblagold.0/12
function world:lagcontrol/moblagold.0/13
execute unless entity @e[tag=dmain,scores={cave_spider_max=0..}] run scoreboard players set @e[tag=dmain] cave_spider_max 50 
function world:lagcontrol/moblagold.0/15
execute if entity @e[tag=dmain,scores={cave_spider_ent=1..}] run function world:lagcontrol/moblagold.0/16
function world:lagcontrol/moblagold.0/17
execute unless entity @e[tag=dmain,scores={cod_max=0..}] run scoreboard players set @e[tag=dmain] cod_max 50 
function world:lagcontrol/moblagold.0/19
execute if entity @e[tag=dmain,scores={cod_ent=1..}] run function world:lagcontrol/moblagold.0/20
function world:lagcontrol/moblagold.0/21
execute unless entity @e[tag=dmain,scores={drag_fire_max=0..}] run scoreboard players set @e[tag=dmain] drag_fire_max 50 
function world:lagcontrol/moblagold.0/23
execute if entity @e[tag=dmain,scores={drag_fire_ent=1..}] run function world:lagcontrol/moblagold.0/24
function world:lagcontrol/moblagold.0/25
execute unless entity @e[tag=dmain,scores={enderman_max=0..}] run scoreboard players set @e[tag=dmain] enderman_max 50 
function world:lagcontrol/moblagold.0/27
execute if entity @e[tag=dmain,scores={enderman_ent=1..}] run function world:lagcontrol/moblagold.0/28
function world:lagcontrol/moblagold.0/29
execute unless entity @e[tag=dmain,scores={endermite_max=0..}] run scoreboard players set @e[tag=dmain] endermite_max 50 
function world:lagcontrol/moblagold.0/31
execute if entity @e[tag=dmain,scores={endermite_ent=1..}] run function world:lagcontrol/moblagold.0/32
function world:lagcontrol/moblagold.0/33
execute unless entity @e[tag=dmain,scores={evoker_max=0..}] run scoreboard players set @e[tag=dmain] evoker_max 50 
function world:lagcontrol/moblagold.0/35
execute if entity @e[tag=dmain,scores={evoker_ent=1..}] run function world:lagcontrol/moblagold.0/36
function world:lagcontrol/moblagold.0/37
execute unless entity @e[tag=dmain,scores={evoker_fangs_max=0..}] run scoreboard players set @e[tag=dmain] evoker_fangs_max 50 
function world:lagcontrol/moblagold.0/39
execute if entity @e[tag=dmain,scores={evoker_fangs_ent=1..}] run function world:lagcontrol/moblagold.0/40
function world:lagcontrol/moblagold.0/41
execute unless entity @e[tag=dmain,scores={exper_orb_max=0..}] run scoreboard players set @e[tag=dmain] exper_orb_max 50 
function world:lagcontrol/moblagold.0/43
execute if entity @e[tag=dmain,scores={exper_orb_ent=1..}] run function world:lagcontrol/moblagold.0/44
function world:lagcontrol/moblagold.0/45
execute unless entity @e[tag=dmain,scores={eye_of_end_max=0..}] run scoreboard players set @e[tag=dmain] eye_of_end_max 50 
function world:lagcontrol/moblagold.0/47
execute if entity @e[tag=dmain,scores={eye_of_end_ent=1..}] run function world:lagcontrol/moblagold.0/48
function world:lagcontrol/moblagold.0/49
execute unless entity @e[tag=dmain,scores={falling_bl_max=0..}] run scoreboard players set @e[tag=dmain] falling_bl_max 50 
function world:lagcontrol/moblagold.0/51
execute if entity @e[tag=dmain,scores={falling_bl_ent=1..}] run function world:lagcontrol/moblagold.0/52
function world:lagcontrol/moblagold.0/53
execute unless entity @e[tag=dmain,scores={hoglin_max=0..}] run scoreboard players set @e[tag=dmain] hoglin_max 50 
function world:lagcontrol/moblagold.0/55
execute if entity @e[tag=dmain,scores={hoglin_ent=1..}] run function world:lagcontrol/moblagold.0/56
function world:lagcontrol/moblagold.0/57
execute unless entity @e[tag=dmain,scores={illusioner_max=0..}] run scoreboard players set @e[tag=dmain] illusioner_max 50 
function world:lagcontrol/moblagold.0/59
execute if entity @e[tag=dmain,scores={illusioner_ent=1..}] run function world:lagcontrol/moblagold.0/60
function world:lagcontrol/moblagold.0/61
execute unless entity @e[tag=dmain,scores={item_max=0..}] run scoreboard players set @e[tag=dmain] item_max 100
function world:lagcontrol/moblagold.0/63
execute if entity @e[tag=dmain,scores={item_ent=1..}] run function world:lagcontrol/moblagold.0/64
function world:lagcontrol/moblagold.0/65
execute unless entity @e[tag=dmain,scores={fireball_max=0..}] run scoreboard players set @e[tag=dmain] fireball_max 50 
function world:lagcontrol/moblagold.0/67
execute if entity @e[tag=dmain,scores={fireball_ent=1..}] run function world:lagcontrol/moblagold.0/68
function world:lagcontrol/moblagold.0/69
execute unless entity @e[tag=dmain,scores={llama_spit_max=0..}] run scoreboard players set @e[tag=dmain] llama_spit_max 50 
function world:lagcontrol/moblagold.0/71
execute if entity @e[tag=dmain,scores={llama_spit_ent=1..}] run function world:lagcontrol/moblagold.0/72
function world:lagcontrol/moblagold.0/73
execute unless entity @e[tag=dmain,scores={magma_cube_max=0..}] run scoreboard players set @e[tag=dmain] magma_cube_max 50 
function world:lagcontrol/moblagold.0/75
execute if entity @e[tag=dmain,scores={magma_cube_ent=1..}] run function world:lagcontrol/moblagold.0/76
function world:lagcontrol/moblagold.0/77
execute unless entity @e[tag=dmain,scores={phantom_max=0..}] run scoreboard players set @e[tag=dmain] phantom_max 50 
function world:lagcontrol/moblagold.0/79
execute if entity @e[tag=dmain,scores={phantom_ent=1..}] run function world:lagcontrol/moblagold.0/80
function world:lagcontrol/moblagold.0/81
execute unless entity @e[tag=dmain,scores={pig_max=0..}] run scoreboard players set @e[tag=dmain] pig_max 50 
function world:lagcontrol/moblagold.0/83
execute if entity @e[tag=dmain,scores={pig_ent=1..}] run function world:lagcontrol/moblagold.0/84
function world:lagcontrol/moblagold.0/85
execute unless entity @e[tag=dmain,scores={piglin_max=0..}] run scoreboard players set @e[tag=dmain] piglin_max 50 
function world:lagcontrol/moblagold.0/87
execute if entity @e[tag=dmain,scores={piglin_ent=1..}] run function world:lagcontrol/moblagold.0/88
function world:lagcontrol/moblagold.0/89
execute unless entity @e[tag=dmain,scores={piglin_brute_max=0..}] run scoreboard players set @e[tag=dmain] piglin_brute_max 50 
function world:lagcontrol/moblagold.0/91
execute if entity @e[tag=dmain,scores={piglin_brute_ent=1..}] run function world:lagcontrol/moblagold.0/92
function world:lagcontrol/moblagold.0/93
execute unless entity @e[tag=dmain,scores={pufferfish_max=0..}] run scoreboard players set @e[tag=dmain] pufferfish_max 50 
function world:lagcontrol/moblagold.0/95
execute if entity @e[tag=dmain,scores={pufferfish_ent=1..}] run function world:lagcontrol/moblagold.0/96
function world:lagcontrol/moblagold.0/97
execute unless entity @e[tag=dmain,scores={salmon_max=0..}] run scoreboard players set @e[tag=dmain] salmon_max 50 
function world:lagcontrol/moblagold.0/99
execute if entity @e[tag=dmain,scores={salmon_ent=1..}] run function world:lagcontrol/moblagold.0/100
function world:lagcontrol/moblagold.0/101
execute unless entity @e[tag=dmain,scores={shulker_max=0..}] run scoreboard players set @e[tag=dmain] shulker_max 50 
function world:lagcontrol/moblagold.0/103
execute if entity @e[tag=dmain,scores={shulker_ent=1..}] run function world:lagcontrol/moblagold.0/104
function world:lagcontrol/moblagold.0/105
execute unless entity @e[tag=dmain,scores={shu_bul_max=0..}] run scoreboard players set @e[tag=dmain] shu_bul_max 50 
function world:lagcontrol/moblagold.0/107
execute if entity @e[tag=dmain,scores={shu_bul_ent=1..}] run function world:lagcontrol/moblagold.0/108
function world:lagcontrol/moblagold.0/109
execute unless entity @e[tag=dmain,scores={silverfish_max=0..}] run scoreboard players set @e[tag=dmain] silverfish_max 50 
function world:lagcontrol/moblagold.0/111
execute if entity @e[tag=dmain,scores={silverfish_ent=1..}] run function world:lagcontrol/moblagold.0/112
function world:lagcontrol/moblagold.0/113
execute unless entity @e[tag=dmain,scores={skeleton_max=0..}] run scoreboard players set @e[tag=dmain] skeleton_max 50 
function world:lagcontrol/moblagold.0/115
execute if entity @e[tag=dmain,scores={skeleton_ent=1..}] run function world:lagcontrol/moblagold.0/116
function world:lagcontrol/moblagold.0/117
execute unless entity @e[tag=dmain,scores={slime_max=0..}] run scoreboard players set @e[tag=dmain] slime_max 50 
function world:lagcontrol/moblagold.0/119
execute if entity @e[tag=dmain,scores={slime_ent=1..}] run function world:lagcontrol/moblagold.0/120
function world:lagcontrol/moblagold.0/121
execute unless entity @e[tag=dmain,scores={smal_fire_max=0..}] run scoreboard players set @e[tag=dmain] smal_fire_max 50 
function world:lagcontrol/moblagold.0/123
execute if entity @e[tag=dmain,scores={smal_fire_ent=1..}] run function world:lagcontrol/moblagold.0/124
function world:lagcontrol/moblagold.0/125
execute unless entity @e[tag=dmain,scores={snowball_max=0..}] run scoreboard players set @e[tag=dmain] snowball_max 50 
function world:lagcontrol/moblagold.0/127
execute if entity @e[tag=dmain,scores={snowball_ent=1..}] run function world:lagcontrol/moblagold.0/128
function world:lagcontrol/moblagold.0/129
execute unless entity @e[tag=dmain,scores={spec_ar_max=0..}] run scoreboard players set @e[tag=dmain] spec_ar_max 50 
function world:lagcontrol/moblagold.0/131
execute if entity @e[tag=dmain,scores={spec_ar_ent=1..}] run function world:lagcontrol/moblagold.0/132
function world:lagcontrol/moblagold.0/133
execute unless entity @e[tag=dmain,scores={spider_max=0..}] run scoreboard players set @e[tag=dmain] spider_max 50 
function world:lagcontrol/moblagold.0/135
execute if entity @e[tag=dmain,scores={spider_ent=1..}] run function world:lagcontrol/moblagold.0/136
function world:lagcontrol/moblagold.0/137
execute unless entity @e[tag=dmain,scores={stray_max=0..}] run scoreboard players set @e[tag=dmain] stray_max 50 
function world:lagcontrol/moblagold.0/139
execute if entity @e[tag=dmain,scores={stray_ent=1..}] run function world:lagcontrol/moblagold.0/140
function world:lagcontrol/moblagold.0/141
execute unless entity @e[tag=dmain,scores={egg_max=0..}] run scoreboard players set @e[tag=dmain] egg_max 50 
function world:lagcontrol/moblagold.0/143
execute if entity @e[tag=dmain,scores={egg_ent=1..}] run function world:lagcontrol/moblagold.0/144
function world:lagcontrol/moblagold.0/145
execute unless entity @e[tag=dmain,scores={ender_pearl_max=0..}] run scoreboard players set @e[tag=dmain] ender_pearl_max 50 
function world:lagcontrol/moblagold.0/147
execute if entity @e[tag=dmain,scores={ender_pearl_ent=1..}] run function world:lagcontrol/moblagold.0/148
function world:lagcontrol/moblagold.0/149
execute unless entity @e[tag=dmain,scores={exper_bot_max=0..}] run scoreboard players set @e[tag=dmain] exper_bot_max 50 
function world:lagcontrol/moblagold.0/151
execute if entity @e[tag=dmain,scores={exper_bot_ent=1..}] run function world:lagcontrol/moblagold.0/152
function world:lagcontrol/moblagold.0/153
execute unless entity @e[tag=dmain,scores={potion_max=0..}] run scoreboard players set @e[tag=dmain] potion_max 50 
function world:lagcontrol/moblagold.0/155
execute if entity @e[tag=dmain,scores={potion_ent=1..}] run function world:lagcontrol/moblagold.0/156
function world:lagcontrol/moblagold.0/157
execute unless entity @e[tag=dmain,scores={vex_max=0..}] run scoreboard players set @e[tag=dmain] vex_max 50 
function world:lagcontrol/moblagold.0/159
execute if entity @e[tag=dmain,scores={vex_ent=1..}] run function world:lagcontrol/moblagold.0/160
function world:lagcontrol/moblagold.0/161
execute unless entity @e[tag=dmain,scores={vindicator_max=0..}] run scoreboard players set @e[tag=dmain] vindicator_max 50 
function world:lagcontrol/moblagold.0/163
execute if entity @e[tag=dmain,scores={vindicator_ent=1..}] run function world:lagcontrol/moblagold.0/164
function world:lagcontrol/moblagold.0/165
execute unless entity @e[tag=dmain,scores={witch_max=0..}] run scoreboard players set @e[tag=dmain] witch_max 50 
function world:lagcontrol/moblagold.0/167
execute if entity @e[tag=dmain,scores={witch_ent=1..}] run function world:lagcontrol/moblagold.0/168
function world:lagcontrol/moblagold.0/169
execute unless entity @e[tag=dmain,scores={with_skul_max=0..}] run scoreboard players set @e[tag=dmain] with_skul_max 50 
function world:lagcontrol/moblagold.0/171
execute if entity @e[tag=dmain,scores={with_skul_ent=1..}] run function world:lagcontrol/moblagold.0/172
function world:lagcontrol/moblagold.0/173
execute unless entity @e[tag=dmain,scores={zoglin_max=0..}] run scoreboard players set @e[tag=dmain] zoglin_max 50 
function world:lagcontrol/moblagold.0/175
execute if entity @e[tag=dmain,scores={zoglin_ent=1..}] run function world:lagcontrol/moblagold.0/176
function world:lagcontrol/moblagold.0/177
execute unless entity @e[tag=dmain,scores={zombie_max=0..}] run scoreboard players set @e[tag=dmain] zombie_max 50 
function world:lagcontrol/moblagold.0/179
execute if entity @e[tag=dmain,scores={zombie_ent=1..}] run function world:lagcontrol/moblagold.0/180
function world:lagcontrol/moblagold.0/181
execute unless entity @e[tag=dmain,scores={zom_pig_max=0..}] run scoreboard players set @e[tag=dmain] zom_pig_max 50 
function world:lagcontrol/moblagold.0/183
execute if entity @e[tag=dmain,scores={zom_pig_ent=1..}] run function world:lagcontrol/moblagold.0/184
function world:lagcontrol/moblagold.0/185
execute unless entity @e[tag=dmain,scores={fish_bob_max=0..}] run scoreboard players set @e[tag=dmain] fish_bob_max 50 
function world:lagcontrol/moblagold.0/187
execute if entity @e[tag=dmain,scores={fish_bob_ent=1..}] run function world:lagcontrol/moblagold.0/188
function world:lagcontrol/moblagold.0/189
execute unless entity @e[tag=dmain,scores={sawayig_max=0..}] run scoreboard players set @e[tag=dmain] sawayig_max 50 
function world:lagcontrol/moblagold.0/191
execute if entity @e[tag=dmain,scores={sawayig_ent=1..}] run function world:lagcontrol/moblagold.0/192
function world:lagcontrol/moblagold.0/193
execute unless entity @e[tag=dmain,scores={moria_max=0..}] run scoreboard players set @e[tag=dmain] moria_max 10
function world:lagcontrol/moblagold.0/195
execute if entity @e[tag=dmain,scores={moria_ent=1..}] run function world:lagcontrol/moblagold.0/196
function world:lagcontrol/moblagold.0/197
execute unless entity @e[tag=dmain,scores={blight_max=0..}] run scoreboard players set @e[tag=dmain] blight_max 50 
function world:lagcontrol/moblagold.0/199
execute if entity @e[tag=dmain,scores={blight_ent=1..}] run function world:lagcontrol/moblagold.0/200
function world:lagcontrol/moblagold.0/201
execute unless entity @e[tag=dmain,scores={machin_shin_max=0..}] run scoreboard players set @e[tag=dmain] machin_shin_max 20 
function world:lagcontrol/moblagold.0/203
execute if entity @e[tag=dmain,scores={machin_shin_ent=1..}] run function world:lagcontrol/moblagold.0/204
function world:lagcontrol/moblagold.0/205
execute unless entity @e[tag=dmain,scores={storm_max=0..}] run scoreboard players set @e[tag=dmain] storm_max 20 
function world:lagcontrol/moblagold.0/207
execute if entity @e[tag=dmain,scores={storm_ent=1..}] run function world:lagcontrol/moblagold.0/208