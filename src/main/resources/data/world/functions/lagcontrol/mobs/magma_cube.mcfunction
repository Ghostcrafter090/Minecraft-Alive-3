
function world:lagcontrol/mobs/magma_cube_/0
execute unless entity @e[name=dmain,scores={magma_cube_max=0..}] run scoreboard players set @e[name=dmain] magma_cube_max 50 
function world:lagcontrol/mobs/magma_cube_/2
execute if entity @e[name=dmain,scores={magma_cube_ent=1..}] run function world:lagcontrol/mobs/magma_cube_/3