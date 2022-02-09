
function world:lagcontrol/moblag_/0
execute at @a run tag @e[type=item,distance=0..20] add playerfound
execute as @e[type=arrow,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=minecraft:area_effect_cloud,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[tag=blight,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[tag=machin_shin,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[tag=sawayig,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=cave_spider,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=cow,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=chicken,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=cod,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=dragon_fireball,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=egg,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=enderman,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=endermite,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=ender_pearl,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=experience_bottle,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=experience_orb,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=eye_of_ender,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=falling_block,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=fireball,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=fishing_bobber,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=hoglin,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=horse,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=item,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=llama_spit,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=magma_cube,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=phantom,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=pig,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=piglin,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=piglin_brute,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=potion,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=pufferfish,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=bee,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=wolf,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=salmon,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=shulker,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=minecraft:shulker_bullet,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=silverfish,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=skeleton,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=slime,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=sheep,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=small_fireball,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=snowball,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=spectral_arrow,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=spider,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=witch,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=wither_skull,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=zoglin,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=zombie,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[scores={airfill=1..1},tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[type=wolf,tag=!lagcontrol] unless data entity @s Owner run tag @s add lagcontrol
execute as @e[type=wolf,tag=lagcontrol] if data entity @s Owner run tag @s remove lagcontrol
execute as @e[type=minecraft:zombified_piglin,tag=!lagcontrol,limit=10,sort=random] run tag @s add lagcontrol
execute as @e[name=dmain,type=marker,scores={atic=10..10}] store result score @s logMcaDebug run gamerule logMcaDebug
function world:lagcontrol/moblag_/55
execute unless entity @e[name=dmain,scores={kill_max=0..}] run scoreboard players set @e[name=dmain] kill_max 400
function world:lagcontrol/moblag_/57
execute if entity @e[name=dmain,scores={kill_ent=1..}] run function world:lagcontrol/moblag_/58
function world:lagcontrol/moblag_/59
execute unless entity @e[name=dmain,scores={moria_max=0..}] run scoreboard players set @e[name=dmain] moria_max 8
function world:lagcontrol/moblag_/61
execute if entity @e[name=dmain,scores={moria_ent=1..}] run function world:lagcontrol/moblag_/62
function world:lagcontrol/moblag_/63
execute unless entity @e[name=dmain,scores={all_max=0..}] run scoreboard players set @e[name=dmain] all_max 600
function world:lagcontrol/moblag_/65
execute if entity @e[name=dmain,scores={all_ent=1..}] run function world:lagcontrol/moblag_/66
function world:lagcontrol/moblag_/67