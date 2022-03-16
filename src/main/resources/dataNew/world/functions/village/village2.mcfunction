
function world:village/village2.0/0
execute as @a run function world:village/village2.0/1
execute as @e[tag=!notick,name=vilf,tag=vil] run function world:village/village2.0/2
execute as @e[name=vilf2,tag=vil] run function world:village/village2.0/3
execute as @e[name=vilf3,tag=vil] run function world:village/village2.0/4
execute as @e[name=village,tag=vil] run function world:village/village2.0/5
execute as @e[name=vpol1,tag=vil] at @s if entity @e[type=villager,distance=0..70] run tp @s ~1 ~ ~
execute as @e[name=vpol2,tag=vil] at @s if entity @e[type=villager,distance=0..70] run tp @s ~-1 ~ ~
execute as @e[name=vpol3,tag=vil] at @s if entity @e[type=villager,distance=0..70] run tp @s ~ ~ ~1
execute as @e[name=vpol4,tag=vil] at @s if entity @e[type=villager,distance=0..70] run tp @s ~ ~ ~-1
execute as @e[name=vpol1,tag=vil] at @s unless entity @e[type=villager,distance=0..69] if entity @e[name=village,tag=vil,scores={vpol=0..0}] run scoreboard players set @e[name=village,tag=vil] vpol1 1
execute as @e[name=vpol2,tag=vil] at @s unless entity @e[type=villager,distance=0..69] if entity @e[name=village,tag=vil,scores={vpol=0..0}] run scoreboard players set @e[name=village,tag=vil] vpol2 1
execute as @e[name=vpol3,tag=vil] at @s unless entity @e[type=villager,distance=0..69] if entity @e[name=village,tag=vil,scores={vpol=0..0}] run scoreboard players set @e[name=village,tag=vil] vpol3 1
execute as @e[name=vpol4,tag=vil] at @s unless entity @e[type=villager,distance=0..69] if entity @e[name=village,tag=vil,scores={vpol=0..0}] run scoreboard players set @e[name=village,tag=vil] vpol4 1
execute as @e[name=village,tag=vil] run function world:village/village2.0/14
execute as @e[name=vt1,tag=vil] at @s unless block ~ ~-1 ~ grass_block unless block ~ ~-1 ~ gravel unless block ~ ~-1 ~ dirt unless block ~ ~-1 ~ coarse_dirt unless block ~ ~-1 ~ podzol unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ red_sand unless block ~ ~-1 ~ stone unless block ~ ~-1 ~ granite unless block ~ ~-1 ~ diorite unless block ~ ~-1 ~ andesite unless block ~ ~-1 ~ mycelium run tp @s ~ ~-1 ~
execute as @e[name=vt2,tag=vil] at @s unless block ~ ~-1 ~ grass_block unless block ~ ~-1 ~ gravel unless block ~ ~-1 ~ dirt unless block ~ ~-1 ~ coarse_dirt unless block ~ ~-1 ~ podzol unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ red_sand unless block ~ ~-1 ~ stone unless block ~ ~-1 ~ granite unless block ~ ~-1 ~ diorite unless block ~ ~-1 ~ andesite unless block ~ ~-1 ~ mycelium run tp @s ~ ~-1 ~
execute as @e[name=vt3,tag=vil] at @s unless block ~ ~-1 ~ grass_block unless block ~ ~-1 ~ gravel unless block ~ ~-1 ~ dirt unless block ~ ~-1 ~ coarse_dirt unless block ~ ~-1 ~ podzol unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ red_sand unless block ~ ~-1 ~ stone unless block ~ ~-1 ~ granite unless block ~ ~-1 ~ diorite unless block ~ ~-1 ~ andesite unless block ~ ~-1 ~ mycelium run tp @s ~ ~-1 ~
execute as @e[name=vt4,tag=vil] at @s unless block ~ ~-1 ~ grass_block unless block ~ ~-1 ~ gravel unless block ~ ~-1 ~ dirt unless block ~ ~-1 ~ coarse_dirt unless block ~ ~-1 ~ podzol unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ red_sand unless block ~ ~-1 ~ stone unless block ~ ~-1 ~ granite unless block ~ ~-1 ~ diorite unless block ~ ~-1 ~ andesite unless block ~ ~-1 ~ mycelium run tp @s ~ ~-1 ~
execute as @e[name=vt1,tag=vil] run function world:village/village2.0/19
execute as @e[name=vt2,tag=vil] run function world:village/village2.0/20
execute as @e[name=vt3,tag=vil] run function world:village/village2.0/21
execute as @e[name=vt4,tag=vil] run function world:village/village2.0/22
execute as @e[name=village,tag=vil] run function world:village/village2.0/23
function world:village/village2.0/24
execute as @e[type=villager,tag=!vil] unless entity @s[scores={vwl=2..2}] at @s if blocks -4 253 4 3 253 -4 ~-4 ~-1 ~-4 masked run scoreboard players set @s vwl 1
execute as @e[type=villager,tag=!vil,scores={vwl=1..1}] run function world:village/village2.0/26
execute if entity @a[scores={vreg=29..29}] run scoreboard players add @e[type=villager,tag=!vil,scores={vwl=2..2}] vwlt 1
function world:village/village2.0/28
execute as @e[type=villager,tag=!vil,scores={vwl=1..2}] run data merge entity @s {NoAI:1b}
execute as @e[type=villager,tag=!vil,scores={vwl=3..3}] run data merge entity @s {NoAI:0b}
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=3..3}] at @s run fill ~-2 ~ ~3 ~1 ~ ~-3 cobblestone replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=4..4}] at @s run fill ~-3 ~ ~2 ~-3 ~ ~-2 cobblestone replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=5..5}] at @s run fill ~2 ~ ~2 ~2 ~ ~-2 cobblestone replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=6..6}] at @s run fill ~-3 ~ ~3 ~-3 ~ ~3 oak_log[axis=y]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=7..7}] at @s run fill ~2 ~ ~-3 ~2 ~ ~-3 oak_log[axis=y]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=8..8}] at @s run fill ~2 ~ ~3 ~2 ~ ~3 oak_log[axis=y]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=9..9}] at @s run fill ~-3 ~ ~-3 ~-3 ~ ~-3 oak_log[axis=y]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=10..10}] at @s run fill ~3 ~ ~1 ~3 ~ ~-1 cobblestone replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=18..18}] at @s run fill ~-3 ~1 ~3 ~-3 ~1 ~3 oak_log[axis=y]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=19..19}] at @s run fill ~2 ~1 ~-3 ~2 ~1 ~-3 oak_log[axis=y]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=20..20}] at @s run fill ~2 ~1 ~3 ~2 ~1 ~3 oak_log[axis=y]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=21..21}] at @s run fill ~-3 ~1 ~-3 ~-3 ~1 ~-3 oak_log[axis=y]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=22..22}] at @s run fill ~-3 ~1 ~2 ~-3 ~1 ~-2 cobblestone replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=23..23}] at @s run fill ~2 ~1 ~2 ~2 ~1 ~-2 cobblestone replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=24..24}] at @s run fill ~-1 ~1 ~-3 ~ ~1 ~-3 oak_door[facing=south,half=lower] replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=25..25}] at @s run fill ~-1 ~2 ~-3 ~ ~2 ~-3 oak_door[facing=south,half=upper] replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=26..26}] at @s run fill ~1 ~1 ~2 ~-2 ~1 ~2 smooth_stone replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=27..27}] at @s run fill ~-2 ~1 ~2 ~-2 ~1 ~-2 smooth_stone replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=28..28}] at @s run fill ~2 ~1 ~ ~2 ~1 ~ blast_furnace[facing=west]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=29..29}] at @s run fill ~1 ~1 ~-3 ~-2 ~1 ~-3 cobblestone replace air
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=30..30}] at @s run fill ~1 ~1 ~3 ~-2 ~1 ~3 cobblestone replace air
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=31..31}] at @s run fill ~3 ~1 ~1 ~3 ~1 ~-1 cobblestone replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=39..39}] at @s run fill ~-3 ~2 ~3 ~-3 ~2 ~3 oak_log[axis=y]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=40..40}] at @s run fill ~2 ~2 ~-3 ~2 ~2 ~-3 oak_log[axis=y]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=41..41}] at @s run fill ~2 ~2 ~3 ~2 ~2 ~3 oak_log[axis=y]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=42..42}] at @s run fill ~-3 ~2 ~-3 ~-3 ~2 ~-3 oak_log[axis=y]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=43..43}] at @s run fill ~-2 ~2 ~3 ~-2 ~2 ~3 oak_log[axis=x]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=44..44}] at @s run fill ~1 ~2 ~3 ~1 ~2 ~3 oak_log[axis=x]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=45..45}] at @s run fill ~-3 ~2 ~ ~-3 ~2 ~ oak_log[axis=z]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=46..46}] at @s run fill ~-3 ~2 ~2 ~-3 ~2 ~2 oak_log[axis=z]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=47..47}] at @s run fill ~-3 ~2 ~-2 ~-3 ~2 ~-2 oak_log[axis=z]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=48..48}] at @s run fill ~-3 ~2 ~1 ~-3 ~2 ~1 glass_pane[north=true,south=true]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=49..49}] at @s run fill ~-3 ~2 ~-1 ~-3 ~2 ~-1 glass_pane[north=true,south=true]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=50..50}] at @s run fill ~ ~2 ~3 ~-1 ~2 ~3 glass_pane[east=true,west=true]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=51..51}] at @s run fill ~1 ~2 ~-3 ~-2 ~2 ~-3 cobblestone replace air
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=52..52}] at @s run fill ~2 ~2 ~2 ~2 ~2 ~-2 cobblestone replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=53..53}] at @s run fill ~3 ~2 ~1 ~3 ~2 ~-1 cobblestone replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=61..61}] at @s run fill ~-3 ~3 ~2 ~-3 ~3 ~-2 cobblestone replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=62..62}] at @s run fill ~2 ~3 ~2 ~2 ~3 ~-2 cobblestone replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=63..63}] at @s run fill ~1 ~3 ~3 ~-2 ~3 ~3 cobblestone replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=64..64}] at @s run fill ~1 ~3 ~-3 ~-2 ~3 ~-3 cobblestone replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=65..65}] at @s run fill ~-3 ~3 ~3 ~-3 ~3 ~3 oak_log[axis=y]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=66..66}] at @s run fill ~2 ~3 ~-3 ~2 ~3 ~-3 oak_log[axis=y]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=67..67}] at @s run fill ~2 ~3 ~3 ~2 ~3 ~3 oak_log[axis=y]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=68..68}] at @s run fill ~-3 ~3 ~-3 ~-3 ~3 ~-3 oak_log[axis=y]
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=76..76}] at @s run fill ~-3 ~4 ~3 ~2 ~4 ~-3 cobblestone_slab[type=bottom] replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=84..84}] at @s run fill ~-2 ~4 ~2 ~1 ~4 ~-2 cobblestone_slab[type=double] replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=92..92}] at @s run fill ~-1 ~5 ~1 ~ ~5 ~-1 cobblestone_slab[type=bottom] replace
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=93..93}] run function world:village/village2.0/79
execute as @e[type=villager,tag=!vil,scores={vwl=2..2,vwlt=94..94}] at @s run scoreboard players set @s vwl 3
execute as @e[type=villager,tag=!vil,scores={vwl=1..1}] at @s if entity @e[type=villager,tag=!vil,scores={vwl=2..2},distance=0..10] run scoreboard players set @s vwl 0
execute as @e[name=village,tag=vol] run function world:village/village2.0/82
execute as @e[type=villager,name=Lumber_Jack] if block ~ ~-1 ~ grass_block if block ~1 ~-1 ~1 grass_block if block ~-1 ~-1 ~1 grass_block if block ~-1 ~-1 ~-1 grass_block if block ~1 ~-1 ~-1 grass_block at @s run fill ~1 ~8 ~1 ~-1 ~ ~-1 air replace #logs