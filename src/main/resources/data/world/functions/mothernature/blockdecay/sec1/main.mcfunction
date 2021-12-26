# Base Chains
execute at @e[name=derp,type=marker] if block ~ ~-1 ~ mca:loosegravel run function world:mothernature/blockdecay/base/basic
execute at @e[name=derp,type=marker] if block ~ ~-1 ~ mca:finesand run function world:mothernature/blockdecay/base/basic
execute at @e[name=derp,type=marker] if block ~ ~-1 ~ mca:redfinesand run function world:mothernature/blockdecay/base/basic
execute at @e[name=derp,type=marker] if block ~ ~-1 ~ mca:humus run function world:mothernature/blockdecay/base/basic
execute at @e[name=derp,type=marker] run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace coarse_dirt

# Reguation Commands
scoreboard objectives add regulate dummy
scoreboard players add @a regulate 1
execute if entity @a[scores={regulate=2..}] run scoreboard players set @a regulate 0

# Semi-Base Chains
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ air replace glass 
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ air replace glass_pane
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ mca:loosegravel replace mossy_cobblestone
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ mossy_cobblestone replace cobblestone
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ cobblestone replace cracked_stone_bricks
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ cracked_stone_bricks replace mossy_stone_bricks
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ mossy_stone_bricks replace stone_bricks
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ cracked_stone_bricks replace chiseled_stone_bricks
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ cobblestone replace smooth_stone
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ quartz_block replace smooth_quartz
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ quartz_block replace chiseled_quartz_block
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ quartz_block replace quartz_pillar
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ smooth_stone replace quartz_block
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ cobblestone replace observer
# execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ cobblestone replace dispenser
# execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ cobblestone replace dropper
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ cobblestone replace piston
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ cobblestone replace sticky_piston

# Regulated Chains
execute if entity @a[scores={regulate=1..1}] run function world:mothernature/blockdecay/sec1/parta
execute if entity @a[scores={regulate=0..0}] run function world:mothernature/blockdecay/sec1/partb

# Extra Chains
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ prismarine replace dark_prismarine
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ prismarine replace prismarine_bricks 
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ cobblestone replace prismarine
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ sandstone replace chiseled_sandstone
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ sandstone replace smooth_sandstone
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ sandstone replace cut_sandstone
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ mca:finesand replace sandstone
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ red_sandstone replace chiseled_red_sandstone
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ red_sandstone replace smooth_red_sandstone
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ red_sandstone replace cut_red_sandstone
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ mca:redfinesand replace red_sandstone
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ glass replace white_stained_glass
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ glass replace orange_stained_glass
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ glass replace magenta_stained_glass
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ glass replace light_blue_stained_glass
execute at @e[name=derp,type=marker] run fill ~ ~-2 ~ ~ ~-2 ~ glass replace yellow_stained_glass