
execute at @s as @e[distance=0..80,scores={DB=1..2,weak_minact_tier=1..1,weak_boolean=1..1,weak_max_tier=1..1,DT=1000..}] run effect give @s weakness 5 0
execute at @s as @e[distance=0..80,scores={DB=1..2,weak_minact_tier=1..1,weak_boolean=1..1,weak_max_tier=2..2,DT=1000..2000}] run effect give @s weakness 5 0
execute at @s as @e[distance=0..80,scores={DB=1..2,weak_minact_tier=1..1,weak_boolean=1..1,weak_max_tier=2..2,DT=2000..}] run effect give @s weakness 5 1
execute at @s as @e[distance=0..80,scores={DB=1..2,weak_minact_tier=2..2,weak_boolean=1..1,weak_max_tier=1..1,DT=2000..}] run effect give @s weakness 5 0
execute at @s as @e[distance=0..80,scores={DB=1..2,weak_minact_tier=2..2,weak_boolean=1..1,weak_max_tier=2..2,DT=2000..3000}] run effect give @s weakness 5 0
execute at @s as @e[distance=0..80,scores={DB=1..2,weak_minact_tier=2..2,weak_boolean=1..1,weak_max_tier=2..2,DT=3000..}] run effect give @s weakness 5 1
execute at @s as @e[distance=0..80,scores={DB=1..2,weak_minact_tier=3..3,weak_boolean=1..1,weak_max_tier=1..1,DT=3000..}] run effect give @s weakness 5 0
execute at @s as @e[distance=0..80,scores={DB=1..2,weak_minact_tier=3..3,weak_boolean=1..1,weak_max_tier=2..2,DT=3000..4000}] run effect give @s weakness 5 0
execute at @s as @e[distance=0..80,scores={DB=1..2,weak_minact_tier=3..3,weak_boolean=1..1,weak_max_tier=2..2,DT=4000..}] run effect give @s weakness 5 1