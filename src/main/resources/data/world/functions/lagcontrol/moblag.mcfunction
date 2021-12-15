# Define
scoreboard objectives add mobscrolltic dummy

# Main
execute at @a run tag @e[type=item,distance=0..20] add playerfound
execute if entity @e[name=dmain,scores={mobscrolltic=0..0}] run function world:lagcontrol/mobs/all
execute if entity @e[name=dmain,scores={mobscrolltic=1..1}] run function world:lagcontrol/mobs/arrow
execute if entity @e[name=dmain,scores={mobscrolltic=2..2}] run function world:lagcontrol/mobs/ar_ef_cl
execute if entity @e[name=dmain,scores={mobscrolltic=3..3}] run function world:lagcontrol/mobs/blight
execute if entity @e[name=dmain,scores={mobscrolltic=4..4}] run function world:lagcontrol/mobs/cave_spider
execute if entity @e[name=dmain,scores={mobscrolltic=5..5}] run function world:lagcontrol/mobs/cod
execute if entity @e[name=dmain,scores={mobscrolltic=6..6}] run function world:lagcontrol/mobs/drag_fire
execute if entity @e[name=dmain,scores={mobscrolltic=7..7}] run function world:lagcontrol/mobs/egg
execute if entity @e[name=dmain,scores={mobscrolltic=8..8}] run function world:lagcontrol/mobs/enderman
execute if entity @e[name=dmain,scores={mobscrolltic=9..9}] run function world:lagcontrol/mobs/endermite
execute if entity @e[name=dmain,scores={mobscrolltic=10..10}] run function world:lagcontrol/mobs/ender_pearl
execute if entity @e[name=dmain,scores={mobscrolltic=11..11}] run function world:lagcontrol/mobs/evoker
execute if entity @e[name=dmain,scores={mobscrolltic=12..12}] run function world:lagcontrol/mobs/evoker_fangs
execute if entity @e[name=dmain,scores={mobscrolltic=13..13}] run function world:lagcontrol/mobs/exper_bot
execute if entity @e[name=dmain,scores={mobscrolltic=14..14}] run function world:lagcontrol/mobs/exper_orb
execute if entity @e[name=dmain,scores={mobscrolltic=15..15}] run function world:lagcontrol/mobs/eye_of_end
execute if entity @e[name=dmain,scores={mobscrolltic=16..16}] run function world:lagcontrol/mobs/falling_bl
execute if entity @e[name=dmain,scores={mobscrolltic=17..17}] run function world:lagcontrol/mobs/fireball
execute if entity @e[name=dmain,scores={mobscrolltic=18..18}] run function world:lagcontrol/mobs/fish_bob
execute if entity @e[name=dmain,scores={mobscrolltic=19..19}] run function world:lagcontrol/mobs/hoglin
execute if entity @e[name=dmain,scores={mobscrolltic=19..19}] run function world:lagcontrol/mobs/horse
execute if entity @e[name=dmain,scores={mobscrolltic=20..20}] run function world:lagcontrol/mobs/illusioner
execute if entity @e[name=dmain,scores={mobscrolltic=21..21}] run function world:lagcontrol/mobs/item
execute if entity @e[name=dmain,scores={mobscrolltic=22..22}] run function world:lagcontrol/mobs/llama_spit
execute if entity @e[name=dmain,scores={mobscrolltic=23..23}] run function world:lagcontrol/mobs/machin_shin
execute if entity @e[name=dmain,scores={mobscrolltic=24..24}] run function world:lagcontrol/mobs/magma_cube
execute if entity @e[name=dmain,scores={mobscrolltic=25..25}] run function world:lagcontrol/mobs/moblist
execute if entity @e[name=dmain,scores={mobscrolltic=26..26}] run function world:lagcontrol/mobs/moria
execute if entity @e[name=dmain,scores={mobscrolltic=27..27}] run function world:lagcontrol/mobs/phantom
execute if entity @e[name=dmain,scores={mobscrolltic=28..28}] run function world:lagcontrol/mobs/pig
execute if entity @e[name=dmain,scores={mobscrolltic=29..29}] run function world:lagcontrol/mobs/piglin
execute if entity @e[name=dmain,scores={mobscrolltic=30..30}] run function world:lagcontrol/mobs/piglin_brute
execute if entity @e[name=dmain,scores={mobscrolltic=31..31}] run function world:lagcontrol/mobs/potion
execute if entity @e[name=dmain,scores={mobscrolltic=32..32}] run function world:lagcontrol/mobs/pufferfish
execute if entity @e[name=dmain,scores={mobscrolltic=33..33}] run function world:lagcontrol/mobs/salmon
execute if entity @e[name=dmain,scores={mobscrolltic=34..34}] run function world:lagcontrol/mobs/sawayig
execute if entity @e[name=dmain,scores={mobscrolltic=35..35}] run function world:lagcontrol/mobs/shulker
execute if entity @e[name=dmain,scores={mobscrolltic=36..36}] run function world:lagcontrol/mobs/shu_bul
execute if entity @e[name=dmain,scores={mobscrolltic=37..37}] run function world:lagcontrol/mobs/silverfish
execute if entity @e[name=dmain,scores={mobscrolltic=38..38}] run function world:lagcontrol/mobs/skeleton
execute if entity @e[name=dmain,scores={mobscrolltic=39..39}] run function world:lagcontrol/mobs/slime
execute if entity @e[name=dmain,scores={mobscrolltic=39..39}] run function world:lagcontrol/mobs/sheep
execute if entity @e[name=dmain,scores={mobscrolltic=40..40}] run function world:lagcontrol/mobs/smal_fire
execute if entity @e[name=dmain,scores={mobscrolltic=41..41}] run function world:lagcontrol/mobs/snowball
execute if entity @e[name=dmain,scores={mobscrolltic=42..42}] run function world:lagcontrol/mobs/spec_ar
execute if entity @e[name=dmain,scores={mobscrolltic=43..43}] run function world:lagcontrol/mobs/spider
execute if entity @e[name=dmain,scores={mobscrolltic=44..44}] run function world:lagcontrol/mobs/storm
execute if entity @e[name=dmain,scores={mobscrolltic=45..45}] run function world:lagcontrol/mobs/stray
execute if entity @e[name=dmain,scores={mobscrolltic=46..46}] run function world:lagcontrol/mobs/vex
execute if entity @e[name=dmain,scores={mobscrolltic=47..47}] run function world:lagcontrol/mobs/vindicator
execute if entity @e[name=dmain,scores={mobscrolltic=48..48}] run function world:lagcontrol/mobs/witch
execute if entity @e[name=dmain,scores={mobscrolltic=49..49}] run function world:lagcontrol/mobs/with_skul
execute if entity @e[name=dmain,scores={mobscrolltic=50..50}] run function world:lagcontrol/mobs/zoglin
execute if entity @e[name=dmain,scores={mobscrolltic=51..51}] run function world:lagcontrol/mobs/zombie
execute if entity @e[name=dmain,scores={mobscrolltic=52..52}] run function world:lagcontrol/mobs/zom_pig
function world:lagcontrol/mobs/item

# Ticker
scoreboard players add @e[name=dmain] mobscrolltic 1
scoreboard players set @e[name=dmain,scores={mobscrolltic=53..}] mobscrolltic 0