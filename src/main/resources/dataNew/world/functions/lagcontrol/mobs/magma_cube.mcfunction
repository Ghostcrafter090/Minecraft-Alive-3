
function world:lagcontrol/mobs/magma_cube.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={magma_cube_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] magma_cube_max 50 
function world:lagcontrol/mobs/magma_cube.0/2
execute if entity @e[tag=dmain,scores={magma_cube_ent=1..}] run function world:lagcontrol/mobs/magma_cube.0/3