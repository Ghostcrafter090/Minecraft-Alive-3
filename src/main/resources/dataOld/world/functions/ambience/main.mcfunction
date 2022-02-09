#ambience
function world:body
#setup
scoreboard objectives add ocean dummy
scoreboard objectives add deep_ocean dummy
scoreboard objectives add frozen_ocean dummy
scoreboard objectives add deep_frozen_ocean dummy
scoreboard objectives add cold_ocean dummy
scoreboard objectives add deep_cold_ocean dummy
scoreboard objectives add lukewarm_ocean dummy
scoreboard objectives add deep_lukewarm_ocean dummy
scoreboard objectives add warm_ocean dummy
scoreboard objectives add deep_warm_ocean dummy
scoreboard objectives add river dummy
scoreboard objectives add frozen_river dummy
scoreboard objectives add beach dummy
scoreboard objectives add stone_shore dummy
scoreboard objectives add snowy_beach dummy
scoreboard objectives add forest dummy
scoreboard objectives add wooded_hills dummy
scoreboard objectives add flower_forest dummy
scoreboard objectives add birch_forest dummy
scoreboard objectives add birch_forest_hills dummy
scoreboard objectives add tall_birch_forest dummy
scoreboard objectives add tall_birch_hills dummy
scoreboard objectives add dark_forest dummy
scoreboard objectives add dark_forest_hills dummy
scoreboard objectives add jungle dummy
scoreboard objectives add jungle_hills dummy
scoreboard objectives add modified_jungle dummy
scoreboard objectives add jungle_edge dummy
scoreboard objectives add modified_jungle_edge dummy
scoreboard objectives add bamboo_jungle dummy
scoreboard objectives add bamboo_jungle_hills dummy
scoreboard objectives add taiga dummy
scoreboard objectives add taiga_hills dummy
scoreboard objectives add taiga_mountains dummy
scoreboard objectives add snowy_taiga dummy
scoreboard objectives add snowy_taiga_hills dummy
scoreboard objectives add snowy_taiga_mountains dummy
scoreboard objectives add giant_tree_taiga dummy
scoreboard objectives add giant_tree_taiga_hills dummy
scoreboard objectives add giant_spruce_taiga dummy
scoreboard objectives add giant_spruce_taiga_hills dummy
scoreboard objectives add mushroom_fields dummy
scoreboard objectives add mushroom_field_shore dummy
scoreboard objectives add swamp dummy
scoreboard objectives add swamp_hills dummy
scoreboard objectives add savanna dummy
scoreboard objectives add savanna_plateau dummy
scoreboard objectives add shattered_savanna dummy
scoreboard objectives add shattered_savanna_plateau dummy
scoreboard objectives add plains dummy
scoreboard objectives add sunflower_plains dummy
scoreboard objectives add desert dummy
scoreboard objectives add desert_hills dummy
scoreboard objectives add desert_lakes dummy
scoreboard objectives add snowy_tundra dummy
scoreboard objectives add snowy_mountains dummy
scoreboard objectives add ice_spikes dummy
scoreboard objectives add mountains dummy
scoreboard objectives add wooded_mountains dummy
scoreboard objectives add gravelly_mountains dummy
scoreboard objectives add modified_gravelly_mountains dummy
scoreboard objectives add mountain_edge dummy
scoreboard objectives add badlands dummy
scoreboard objectives add badlands_plateau dummy
scoreboard objectives add modified_badlands_plateau dummy
scoreboard objectives add wooded_badlands_plateau dummy
scoreboard objectives add modified_wooded_badlands_plateau dummy
scoreboard objectives add eroded_badlands dummy
scoreboard objectives add nether_wastes dummy
scoreboard objectives add crimson_forest dummy
scoreboard objectives add warped_forest dummy
scoreboard objectives add soul_sand_valley dummy
scoreboard objectives add basalt_deltas dummy
scoreboard objectives add the_end dummy
scoreboard objectives add small_end_islands dummy
scoreboard objectives add end_midlands dummy
scoreboard objectives add end_highlands dummy
scoreboard objectives add end_barrens dummy
scoreboard objectives add the_void dummy
scoreboard objectives add sky dummy
scoreboard objectives add ambt dummy
scoreboard objectives add tic dummy

#loop
scoreboard players add @a tic 1
#execute if entity @a[scores={tic=10..}] as @a at @s run function find_biome:locate
#execute if entity @a[scores={tic=10..}] as @a at @s run setblock ~ 255 ~ chest
execute if entity @a[scores={tic=10..}] as @a at @s store result score @s biomea run loot spawn ~ -100 ~ loot find_biome:custom/biome
execute if entity @a[scores={tic=10..}] as @a at @s as @e[type=item,nbt={Item:{id:"minecraft:structure_void"}}] store result score @p biome run data get entity @s Item.Count 1
#execute if entity @a[scores={tic=10..}] as @a at @s positioned ~ ~-300 ~ as @e[type=item,nbt={Item:{id:"minecraft:structure_void"}},distance=0..2] positioned ~ ~300 ~ run scoreboard players operation @a[distance=0..2,limit=1] biome = @s biome
#execute as @a run scoreboard players operation @s biome = @s biomea
#execute if entity @a[scores={tic=10..}] as @a at @s run setblock ~ 255 ~ air
execute as @a at @s if entity @s[scores={tic=10..}] run scoreboard players set @s tic 0
execute as @a[scores={biome=0..0}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=middleocean,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"middleocean"}'}
execute as @a[scores={biome=24..24}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=middleocean,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"middleocean"}'}
execute as @a[scores={biome=46..46}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=middleocean,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"middleocean"}'}
execute as @a[scores={biome=49..49}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=middleocean,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"middleocean"}'}
execute as @a[scores={biome=45..45}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=middleocean,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"middleocean"}'}
execute as @a[scores={biome=48..48}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=middleocean,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"middleocean"}'}
execute as @a[scores={biome=44..44}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=middleocean,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"middleocean"}'}
execute as @a[scores={biome=47..47}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=middleocean,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"middleocean"}'}

execute as @a[scores={biome=16..16}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=oceanwaves,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"oceanwaves"}'}
execute as @a[scores={biome=25..25}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=oceanwaves,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"oceanwaves"}'}

execute as @a[scores={biome=7..7}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=river,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"river"}'}

#execute as @a[scores={beach=..0}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=oceanwaves,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"oceanwaves"}'}

execute as @a[scores={biome=4..4}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=forestmain,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"forestmain"}'}
execute as @a[scores={biome=55..55}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=forestmain,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"forestmain"}'}
execute as @a[scores={biome=18..18}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=forestmain,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"forestmain"}'}
execute as @a[scores={biome=34..34}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=forestmain,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"forestmain"}'}
execute as @a[scores={biome=29..29}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=forestmain,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"forestmain"}'}
execute as @a[scores={biome=63..63}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=forestmain,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"forestmain"}'}

execute as @a[scores={biome=27..27}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=forestbirch,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"forestbirch"}'}
execute as @a[scores={biome=28..28}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=forestbirch,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"forestbirch"}'}
execute as @a[scores={biome=61..61}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=forestbirch,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"forestbirch"}'}
execute as @a[scores={biome=62..62}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=forestbirch,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"forestbirch"}'}

execute as @a[scores={biome=21..21}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=jungle,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"jungle"}'}
execute as @a[scores={biome=22..22}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=jungle,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"jungle"}'}
execute as @a[scores={biome=59..59}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=jungle,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"jungle"}'}
execute as @a[scores={biome=73..73}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=jungle,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"jungle"}'}
execute as @a[scores={biome=74..74}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=jungle,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"jungle"}'}
execute as @a[scores={jungle_edge=23..23}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=jungle,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"jungle"}'}
execute as @a[scores={biome=60..60}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=jungle,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"jungle"}'}

execute as @a[scores={biome=5..5}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=foresttaiga,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"foresttaiga"}'}
execute as @a[scores={biome=19..19}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=foresttaiga,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"foresttaiga"}'}
execute as @a[scores={biome=56..56}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=foresttaiga,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"foresttaiga"}'}
execute as @a[scores={biome=32..32}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=foresttaiga,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"foresttaiga"}'}
execute as @a[scores={biome=33..33}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=foresttaiga,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"foresttaiga"}'}
execute as @a[scores={biome=65..65}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=foresttaiga,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"foresttaiga"}'}
execute as @a[scores={biome=66..66}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=foresttaiga,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"foresttaiga"}'}

execute as @a[scores={biome=30..30}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=forestsnow,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"forestsnow"}'}
execute as @a[scores={biome=31..31}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=forestsnow,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"forestsnow"}'}
execute as @a[scores={biome=64..64}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=forestsnow,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"forestsnow"}'}

execute as @a[scores={biome=6..6}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=swamp,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"swamp"}'}
execute as @a[scores={biome=57..57}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=swamp,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"swamp"}'}

execute as @a[scores={biome=35..35}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=savanah,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"savanah"}'}
execute as @a[scores={biome=36..36}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=savanah,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"savanah"}'}
execute as @a[scores={biome=68..68}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=savanah,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"savanah"}'}
execute as @a[scores={biome=69..69}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=savanah,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"savanah"}'}

execute as @a[scores={biome=1..1}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=plains,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"plains"}'}
execute as @a[scores={biome=52..52}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=plains,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"plains"}'}

execute as @a[scores={biome=2..2}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=desert,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"desert"}'}
execute as @a[scores={biome=17..17}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=desert,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"desert"}'}
execute as @a[scores={biome=53..53}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=desert,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"desert"}'}
execute as @a[scores={biome=37..37}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=desert,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"desert"}'}
execute as @a[scores={biome=39..39}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=desert,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"desert"}'}
execute as @a[scores={biome=72..72}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=desert,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"desert"}'}
execute as @a[scores={biome=38..38}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=desert,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"desert"}'}
execute as @a[scores={biome=71..71}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=desert,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"desert"}'}
execute as @a[scores={biome=70..70}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=desert,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"desert"}'}

execute as @a[scores={biome=12..12}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=tundra,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"tundra"}'}
execute as @a[scores={biome=58..58}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=tundra,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"tundra"}'}

execute as @a[scores={biome=13..13}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=highlevelmountain,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"highlevelmountain"}'}

execute as @a[scores={biome=3..3}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=mountain,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"mountain"}'}
execute as @a[scores={biome=20..20}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=mountain,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"mountain"}'}
execute as @a[scores={biome=54..54}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=mountain,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"mountain"}'}
execute as @a[scores={biome=67..67}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=mountain,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"mountain"}'}

execute as @a[scores={biome=18..18}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=highlevelwoods,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"highlevelwoods"}'}
execute as @a[scores={biome=34..34}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=highlevelwoods,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"highlevelwoods"}'}
execute as @a[scores={biome=28..28}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=highlevelwoods,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"highlevelwoods"}'}
execute as @a[scores={biome=62..62}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=highlevelwoods,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"highlevelwoods"}'}
execute as @a[scores={biome=63..63}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=highlevelwoods,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"highlevelwoods"}'}
execute as @a[scores={biome=19..19}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=highlevelwoods,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"highlevelwoods"}'}
execute as @a[scores={biome=56..56}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=highlevelwoods,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"highlevelwoods"}'}
execute as @a[scores={biome=31..31}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=highlevelwoods,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"highlevelwoods"}'}
execute as @a[scores={biome=64..64}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=highlevelwoods,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"highlevelwoods"}'}
execute as @a[scores={biome=33..33}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=highlevelwoods,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"highlevelwoods"}'}
execute as @a[scores={biome=66..66}] at @s if entity @a[scores={sky=1..1}] unless entity @e[type=marker,name=highlevelwoods,distance=0..10] run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["amb","lagcontrol"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"highlevelwoods"}'}

execute as @a run scoreboard players set @s sky 1
execute as @a at @s unless block ~ ~1 ~ air unless block ~ ~1 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~2 ~ air unless block ~ ~2 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~3 ~ air unless block ~ ~3 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~4 ~ air unless block ~ ~4 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~5 ~ air unless block ~ ~5 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~6 ~ air unless block ~ ~6 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~7 ~ air unless block ~ ~7 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~8 ~ air unless block ~ ~8 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~9 ~ air unless block ~ ~9 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~10 ~ air unless block ~ ~10 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~11 ~ air unless block ~ ~11 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~12 ~ air unless block ~ ~12 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~13 ~ air unless block ~ ~13 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~14 ~ air unless block ~ ~14 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~15 ~ air unless block ~ ~15 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~16 ~ air unless block ~ ~16 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~17 ~ air unless block ~ ~17 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~18 ~ air unless block ~ ~18 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~19 ~ air unless block ~ ~19 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~20 ~ air unless block ~ ~20 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~21 ~ air unless block ~ ~21 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~22 ~ air unless block ~ ~22 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~23 ~ air unless block ~ ~23 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~24 ~ air unless block ~ ~24 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~25 ~ air unless block ~ ~25 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~26 ~ air unless block ~ ~26 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~27 ~ air unless block ~ ~27 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~28 ~ air unless block ~ ~28 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~29 ~ air unless block ~ ~29 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~30 ~ air unless block ~ ~30 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~31 ~ air unless block ~ ~31 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~32 ~ air unless block ~ ~32 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~33 ~ air unless block ~ ~33 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~34 ~ air unless block ~ ~34 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~35 ~ air unless block ~ ~35 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~36 ~ air unless block ~ ~36 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~37 ~ air unless block ~ ~37 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~38 ~ air unless block ~ ~38 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~39 ~ air unless block ~ ~39 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~40 ~ air unless block ~ ~40 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~41 ~ air unless block ~ ~41 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~42 ~ air unless block ~ ~42 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~43 ~ air unless block ~ ~43 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~44 ~ air unless block ~ ~44 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~45 ~ air unless block ~ ~45 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~46 ~ air unless block ~ ~46 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~47 ~ air unless block ~ ~47 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~48 ~ air unless block ~ ~48 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~49 ~ air unless block ~ ~49 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~50 ~ air unless block ~ ~50 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~51 ~ air unless block ~ ~51 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~52 ~ air unless block ~ ~52 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~53 ~ air unless block ~ ~53 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~54 ~ air unless block ~ ~54 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~55 ~ air unless block ~ ~55 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~56 ~ air unless block ~ ~56 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~57 ~ air unless block ~ ~57 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~58 ~ air unless block ~ ~58 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~59 ~ air unless block ~ ~59 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~60 ~ air unless block ~ ~60 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~61 ~ air unless block ~ ~61 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~62 ~ air unless block ~ ~62 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~63 ~ air unless block ~ ~63 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~64 ~ air unless block ~ ~64 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~65 ~ air unless block ~ ~65 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~66 ~ air unless block ~ ~66 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~67 ~ air unless block ~ ~67 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~68 ~ air unless block ~ ~68 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~69 ~ air unless block ~ ~69 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~70 ~ air unless block ~ ~70 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~71 ~ air unless block ~ ~71 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~72 ~ air unless block ~ ~72 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~73 ~ air unless block ~ ~73 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~74 ~ air unless block ~ ~74 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~75 ~ air unless block ~ ~75 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~76 ~ air unless block ~ ~76 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~77 ~ air unless block ~ ~77 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~78 ~ air unless block ~ ~78 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~79 ~ air unless block ~ ~79 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~80 ~ air unless block ~ ~80 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~81 ~ air unless block ~ ~81 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~82 ~ air unless block ~ ~82 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~83 ~ air unless block ~ ~83 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~84 ~ air unless block ~ ~84 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~85 ~ air unless block ~ ~85 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~86 ~ air unless block ~ ~86 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~87 ~ air unless block ~ ~87 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~88 ~ air unless block ~ ~88 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~89 ~ air unless block ~ ~89 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~90 ~ air unless block ~ ~90 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~91 ~ air unless block ~ ~91 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~92 ~ air unless block ~ ~92 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~93 ~ air unless block ~ ~93 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~94 ~ air unless block ~ ~94 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~95 ~ air unless block ~ ~95 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~96 ~ air unless block ~ ~96 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~97 ~ air unless block ~ ~97 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~98 ~ air unless block ~ ~98 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~99 ~ air unless block ~ ~99 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~100 ~ air unless block ~ ~100 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~101 ~ air unless block ~ ~101 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~102 ~ air unless block ~ ~102 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~103 ~ air unless block ~ ~103 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~104 ~ air unless block ~ ~104 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~105 ~ air unless block ~ ~105 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~106 ~ air unless block ~ ~106 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~107 ~ air unless block ~ ~107 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~108 ~ air unless block ~ ~108 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~109 ~ air unless block ~ ~109 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~110 ~ air unless block ~ ~110 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~111 ~ air unless block ~ ~111 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~112 ~ air unless block ~ ~112 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~113 ~ air unless block ~ ~113 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~114 ~ air unless block ~ ~114 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~115 ~ air unless block ~ ~115 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~116 ~ air unless block ~ ~116 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~117 ~ air unless block ~ ~117 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~118 ~ air unless block ~ ~118 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~119 ~ air unless block ~ ~119 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~120 ~ air unless block ~ ~120 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~121 ~ air unless block ~ ~121 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~122 ~ air unless block ~ ~122 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~123 ~ air unless block ~ ~123 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~124 ~ air unless block ~ ~124 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~125 ~ air unless block ~ ~125 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~126 ~ air unless block ~ ~126 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~127 ~ air unless block ~ ~127 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~128 ~ air unless block ~ ~128 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~129 ~ air unless block ~ ~129 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~130 ~ air unless block ~ ~130 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~131 ~ air unless block ~ ~131 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~132 ~ air unless block ~ ~132 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~133 ~ air unless block ~ ~133 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~134 ~ air unless block ~ ~134 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~135 ~ air unless block ~ ~135 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~136 ~ air unless block ~ ~136 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~137 ~ air unless block ~ ~137 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~138 ~ air unless block ~ ~138 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~139 ~ air unless block ~ ~139 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~140 ~ air unless block ~ ~140 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~141 ~ air unless block ~ ~141 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~142 ~ air unless block ~ ~142 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~143 ~ air unless block ~ ~143 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~144 ~ air unless block ~ ~144 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~145 ~ air unless block ~ ~145 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~146 ~ air unless block ~ ~146 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~147 ~ air unless block ~ ~147 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~148 ~ air unless block ~ ~148 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~149 ~ air unless block ~ ~149 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~150 ~ air unless block ~ ~150 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~151 ~ air unless block ~ ~151 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~152 ~ air unless block ~ ~152 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~153 ~ air unless block ~ ~153 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~154 ~ air unless block ~ ~154 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~155 ~ air unless block ~ ~155 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~156 ~ air unless block ~ ~156 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~157 ~ air unless block ~ ~157 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~158 ~ air unless block ~ ~158 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~159 ~ air unless block ~ ~159 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~160 ~ air unless block ~ ~160 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~161 ~ air unless block ~ ~161 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~162 ~ air unless block ~ ~162 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~163 ~ air unless block ~ ~163 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~164 ~ air unless block ~ ~164 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~165 ~ air unless block ~ ~165 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~166 ~ air unless block ~ ~166 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~167 ~ air unless block ~ ~167 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~168 ~ air unless block ~ ~168 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~169 ~ air unless block ~ ~169 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~170 ~ air unless block ~ ~170 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~171 ~ air unless block ~ ~171 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~172 ~ air unless block ~ ~172 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~173 ~ air unless block ~ ~173 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~174 ~ air unless block ~ ~174 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~175 ~ air unless block ~ ~175 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~176 ~ air unless block ~ ~176 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~177 ~ air unless block ~ ~177 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~178 ~ air unless block ~ ~178 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~179 ~ air unless block ~ ~179 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~180 ~ air unless block ~ ~180 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~181 ~ air unless block ~ ~181 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~182 ~ air unless block ~ ~182 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~183 ~ air unless block ~ ~183 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~184 ~ air unless block ~ ~184 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~185 ~ air unless block ~ ~185 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~186 ~ air unless block ~ ~186 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~187 ~ air unless block ~ ~187 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~188 ~ air unless block ~ ~188 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~189 ~ air unless block ~ ~189 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~190 ~ air unless block ~ ~190 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~191 ~ air unless block ~ ~191 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~192 ~ air unless block ~ ~192 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~193 ~ air unless block ~ ~193 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~194 ~ air unless block ~ ~194 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~195 ~ air unless block ~ ~195 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~196 ~ air unless block ~ ~196 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~197 ~ air unless block ~ ~197 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~198 ~ air unless block ~ ~198 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~199 ~ air unless block ~ ~199 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~200 ~ air unless block ~ ~200 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~201 ~ air unless block ~ ~201 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~202 ~ air unless block ~ ~202 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~203 ~ air unless block ~ ~203 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~204 ~ air unless block ~ ~204 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~205 ~ air unless block ~ ~205 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~206 ~ air unless block ~ ~206 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~207 ~ air unless block ~ ~207 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~208 ~ air unless block ~ ~208 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~209 ~ air unless block ~ ~209 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~210 ~ air unless block ~ ~210 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~211 ~ air unless block ~ ~211 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~212 ~ air unless block ~ ~212 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~213 ~ air unless block ~ ~213 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~214 ~ air unless block ~ ~214 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~215 ~ air unless block ~ ~215 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~216 ~ air unless block ~ ~216 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~217 ~ air unless block ~ ~217 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~218 ~ air unless block ~ ~218 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~219 ~ air unless block ~ ~219 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~220 ~ air unless block ~ ~220 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~221 ~ air unless block ~ ~221 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~222 ~ air unless block ~ ~222 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~223 ~ air unless block ~ ~223 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~224 ~ air unless block ~ ~224 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~225 ~ air unless block ~ ~225 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~226 ~ air unless block ~ ~226 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~227 ~ air unless block ~ ~227 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~228 ~ air unless block ~ ~228 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~229 ~ air unless block ~ ~229 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~230 ~ air unless block ~ ~230 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~231 ~ air unless block ~ ~231 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~232 ~ air unless block ~ ~232 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~233 ~ air unless block ~ ~233 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~234 ~ air unless block ~ ~234 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~235 ~ air unless block ~ ~235 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~236 ~ air unless block ~ ~236 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~237 ~ air unless block ~ ~237 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~238 ~ air unless block ~ ~238 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~239 ~ air unless block ~ ~239 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~240 ~ air unless block ~ ~240 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~241 ~ air unless block ~ ~241 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~242 ~ air unless block ~ ~242 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~243 ~ air unless block ~ ~243 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~244 ~ air unless block ~ ~244 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~245 ~ air unless block ~ ~245 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~246 ~ air unless block ~ ~246 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~247 ~ air unless block ~ ~247 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~248 ~ air unless block ~ ~248 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~249 ~ air unless block ~ ~249 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~250 ~ air unless block ~ ~250 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~251 ~ air unless block ~ ~251 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~252 ~ air unless block ~ ~252 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~253 ~ air unless block ~ ~253 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~254 ~ air unless block ~ ~254 ~ #minecraft:leaves run scoreboard players set @a sky 0
execute as @a at @s unless block ~ ~255 ~ air unless block ~ ~255 ~ #minecraft:leaves run scoreboard players set @a sky 0

execute as @e[tag=amb,type=marker] unless entity @s[scores={ambt=0..1000}] run scoreboard players set @s ambt 1000
execute as @a run scoreboard players operation @s ambt += @e[name=dmain,type=marker] blockta
execute at @a as @e[tag=amb,distance=0..15] run scoreboard players operation @s ambt += @e[name=dmain,type=marker] blockta
execute as @a[scores={ambt=5..}] run scoreboard players set @s ambt 0
execute as @e[type=marker,name=desert] if entity @s[scores={ambt=800..}] at @s if entity @a[distance=0..35] run playsound map.ambience.desert ambient @a ~ ~ ~ 1
execute as @e[type=marker,name=desert] if entity @s[scores={ambt=800..}] at @s run scoreboard players set @s ambt 0
execute as @e[type=marker,name=forestbirch] if entity @s[scores={ambt=800..}] at @s if entity @a[distance=0..35] run playsound map.ambience.forestbirch ambient @a ~ ~ ~ 1
execute as @e[type=marker,name=forestbirch] if entity @s[scores={ambt=800..}] at @s run scoreboard players set @s ambt 0
execute as @e[type=marker,name=forestmain] if entity @s[scores={ambt=500..}] at @s if entity @a[distance=0..35] run playsound map.ambience.forestmain ambient @a ~ ~ ~ 1
execute as @e[type=marker,name=forestmain] if entity @s[scores={ambt=500..}] at @s run scoreboard players set @s ambt 0
execute as @e[type=marker,name=forestsnow] if entity @s[scores={ambt=800..}] at @s if entity @a[distance=0..35] run playsound map.ambience.forestsnow ambient @a ~ ~ ~ 1
execute as @e[type=marker,name=forestsnow] if entity @s[scores={ambt=800..}] at @s run scoreboard players set @s ambt 0
execute as @e[type=marker,name=foresttaiga] if entity @s[scores={ambt=500..}] at @s if entity @a[distance=0..35] run playsound map.ambience.foresttaiga ambient @a ~ ~ ~ 1
execute as @e[type=marker,name=foresttaiga] if entity @s[scores={ambt=500..}] at @s run scoreboard players set @s ambt 0
execute as @e[type=marker,name=highlevelmountain] if entity @s[scores={ambt=700..}] at @s if entity @a[distance=0..35] run playsound map.ambience.highlevelmountain ambient @a ~ ~ ~ 1
execute as @e[type=marker,name=highlevelmountain] if entity @s[scores={ambt=700..}] at @s run scoreboard players set @s ambt 0
execute as @e[type=marker,name=highlevelwoods] if entity @s[scores={ambt=700..}] at @s if entity @a[distance=0..35] run playsound map.ambience.highlevelwoods ambient @a ~ ~ ~ 1
execute as @e[type=marker,name=highlevelwoods] if entity @s[scores={ambt=700..}] at @s run scoreboard players set @s ambt 0
execute as @e[type=marker,name=jungle] if entity @s[scores={ambt=800..}] at @s if entity @a[distance=0..35] run playsound map.ambience.jungle ambient @a ~ ~ ~ 1
execute as @e[type=marker,name=jungle] if entity @s[scores={ambt=800..}] at @s run scoreboard players set @s ambt 0
execute as @e[type=marker,name=middleocean] if entity @s[scores={ambt=300..}] at @s if entity @a[distance=0..35] run playsound map.ambience.middleocean ambient @a ~ ~ ~ 1
execute as @e[type=marker,name=middleocean] if entity @s[scores={ambt=300..}] at @s run scoreboard players set @s ambt 0
execute as @e[type=marker,name=mountain] if entity @s[scores={ambt=700..}] at @s if entity @a[distance=0..35] run playsound map.ambience.mountain ambient @a ~ ~ ~ 1
execute as @e[type=marker,name=mountain] if entity @s[scores={ambt=700..}] at @s run scoreboard players set @s ambt 0
execute as @e[type=marker,name=oceanwaves] if entity @s[scores={ambt=850..}] at @s if entity @a[distance=0..35] run playsound map.ambience.oceanwaves ambient @a ~ ~ ~ 1
execute as @e[type=marker,name=oceanwaves] if entity @s[scores={ambt=850..}] at @s run scoreboard players set @s ambt 0
execute as @e[type=marker,name=plains] if entity @s[scores={ambt=800..}] at @s if entity @a[distance=0..35] run playsound map.ambience.plains ambient @a ~ ~ ~ 1
execute as @e[type=marker,name=plains] if entity @s[scores={ambt=800..}] at @s run scoreboard players set @s ambt 0
execute as @e[type=marker,name=river] if entity @s[scores={ambt=300..}] at @s if entity @a[distance=0..35] run playsound map.ambience.river ambient @a ~ ~ ~ 1
execute as @e[type=marker,name=river] if entity @s[scores={ambt=300..}] at @s run scoreboard players set @s ambt 0
execute as @e[type=marker,name=savanah] if entity @s[scores={ambt=800..}] at @s if entity @a[distance=0..35] run playsound map.ambience.savanah ambient @a ~ ~ ~ 1
execute as @e[type=marker,name=savanah] if entity @s[scores={ambt=800..}] at @s run scoreboard players set @s ambt 0
execute as @e[type=marker,name=swamp] if entity @s[scores={ambt=500..}] at @s if entity @a[distance=0..35] run playsound map.ambience.swamp ambient @a ~ ~ ~ 1
execute as @e[type=marker,name=swamp] if entity @s[scores={ambt=500..}] at @s run scoreboard players set @s ambt 0
execute as @e[type=marker,name=tundra] if entity @s[scores={ambt=700..}] at @s if entity @a[distance=0..35] run playsound map.ambience.tundra ambient @a ~ ~ ~ 1
execute as @e[type=marker,name=tundra] if entity @s[scores={ambt=700..}] at @s run scoreboard players set @s ambt 0
execute at @a as @e[tag=amb,distance=15..] at @s unless entity @a[distance=0..15] unless entity @s[scores={ambt=0..0}] run scoreboard players set @s ambt 0