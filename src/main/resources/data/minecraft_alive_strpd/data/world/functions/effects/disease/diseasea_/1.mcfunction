
execute at @s if entity @e[distance=0..80,scores={DB=1..2,slow_boolean=1..1}] run function world:effects/disease/effecttypes/true/slowness
execute at @s if entity @e[distance=0..80,scores={DB=1..2,minf_boolean=1..1}] run function world:effects/disease/effecttypes/true/miningfat
execute at @s if entity @e[distance=0..80,scores={DB=1..2,nau_boolean=1..1}] run function world:effects/disease/effecttypes/true/nausea
execute at @s if entity @e[distance=0..80,scores={DB=1..2,blin_boolean=1..1}] run function world:effects/disease/effecttypes/true/blindness
execute at @s if entity @e[distance=0..80,scores={DB=1..2,hung_boolean=1..1}] run function world:effects/disease/effecttypes/true/hunger
execute at @s if entity @e[distance=0..80,scores={DB=1..2,weak_boolean=1..1}] run function world:effects/disease/effecttypes/true/weakness
execute at @s if entity @e[distance=0..80,scores={DB=1..2,poi_boolean=1..1}] run function world:effects/disease/effecttypes/true/poison
execute at @s if entity @e[distance=0..80,scores={DB=1..2,with_boolean=1..1}] run function world:effects/disease/effecttypes/true/wither