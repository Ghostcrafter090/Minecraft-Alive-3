
execute if block ~ ~-1 ~ redstone_wire run function world:extras/creeper/fire.0/3.1/0
execute if block ~ ~-1 ~ magma_block run data modify entity @s ignited set value 1b
execute if block ~ ~-1 ~ redstone_ore[lit=true] run data modify entity @s ignited set value 1b