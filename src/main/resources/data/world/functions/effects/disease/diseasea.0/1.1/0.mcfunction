

execute if entity @e[tag=!notick,type=!marker,type=!falling_block,distance=0..80,scores={DB=1..2,slow_boolean=1..1}] run function world:effects/disease/effecttypes/true/slowness
execute if entity @e[tag=!notick,type=!marker,type=!falling_block,distance=0..80,scores={DB=1..2,minf_boolean=1..1}] run function world:effects/disease/effecttypes/true/miningfat
execute if entity @e[tag=!notick,type=!marker,type=!falling_block,distance=0..80,scores={DB=1..2,nau_boolean=1..1}] run function world:effects/disease/effecttypes/true/nausea
execute if entity @e[tag=!notick,type=!marker,type=!falling_block,distance=0..80,scores={DB=1..2,blin_boolean=1..1}] run function world:effects/disease/effecttypes/true/blindness
execute if entity @e[tag=!notick,type=!marker,type=!falling_block,distance=0..80,scores={DB=1..2,hung_boolean=1..1}] run function world:effects/disease/effecttypes/true/hunger
execute if entity @e[tag=!notick,type=!marker,type=!falling_block,distance=0..80,scores={DB=1..2,weak_boolean=1..1}] run function world:effects/disease/effecttypes/true/weakness
execute if entity @e[tag=!notick,type=!marker,type=!falling_block,distance=0..80,scores={DB=1..2,poi_boolean=1..1}] run function world:effects/disease/effecttypes/true/poison
execute if entity @e[tag=!notick,type=!marker,type=!falling_block,distance=0..80,scores={DB=1..2,with_boolean=1..1}] run function world:effects/disease/effecttypes/true/wither