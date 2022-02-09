
execute if entity @a[scores={reguz=4..4}] as @e[type=piglin] unless entity @s[scores={DB=1..1}] run scoreboard players set @s DB 1
execute if entity @a[scores={reguz=1..1}] as @e[type=piglin] run scoreboard players add @s slow_minact_tier 1
execute if entity @a[scores={reguz=2..2}] as @e[type=piglin,scores={slow_minact_tier=4..}] run scoreboard players set @s slow_minact_tier 1
execute if entity @a[scores={reguz=1..3}] as @e[type=piglin] run scoreboard players add @s slow_boolean 1
execute if entity @a[scores={reguz=2..2}] as @e[type=piglin,scores={slow_boolean=2..}] run scoreboard players set @s slow_boolean 0
execute if entity @a[scores={reguz=1..2}] as @e[type=piglin] run scoreboard players add @s with_max_tier 1
execute if entity @a[scores={reguz=4..4}] as @e[type=piglin,scores={slow_max_tier=3..}] run scoreboard players set @s slow_max_tier 1
execute if entity @a[scores={reguz=1..2}] as @e[type=piglin] run scoreboard players add @s slow_max_tier 1
execute if entity @a[scores={reguz=2..3}] as @e[type=piglin,scores={minf_minact_tier=2..}] run scoreboard players set @s minf_minact_tier 1
execute if entity @a[scores={reguz=3..4}] as @e[type=piglin] run scoreboard players add @s minf_minact_tier 1
execute if entity @a[scores={reguz=4..4}] as @e[type=piglin,scores={minf_boolean=2..}] run scoreboard players set @s minf_boolean 0
execute if entity @a[scores={reguz=2..4}] as @e[type=piglin] run scoreboard players add @s minf_boolean 1
execute if entity @a[scores={reguz=1..4}] as @e[type=piglin,scores={minf_max_tier=3..}] run scoreboard players set @s minf_max_tier 1
execute if entity @a[scores={reguz=4..4}] as @e[type=piglin] run scoreboard players add @s minf_max_tier 1
execute if entity @a[scores={reguz=3..4}] as @e[type=piglin,scores={nau_minact_tier=5..}] run scoreboard players set @s nau_minact_tier 1
execute if entity @a[scores={reguz=2..4}] as @e[type=piglin] run scoreboard players add @s nau_minact_tier 1
execute if entity @a[scores={reguz=3..4}] as @e[type=piglin,scores={nau_boolean=2..}] run scoreboard players set @s nau_boolean 0
execute if entity @a[scores={reguz=4..4}] as @e[type=piglin] run scoreboard players add @s nau_boolean 1
execute if entity @a[scores={reguz=1..3}] as @e[type=piglin,scores={nau_max_tier=5..}] run scoreboard players set @s nau_max_tier 1
execute if entity @a[scores={reguz=2..4}] as @e[type=piglin] run scoreboard players add @s nau_max_tier 1
execute if entity @a[scores={reguz=3..4}] as @e[type=piglin,scores={blin_minact_tier=5..}] run scoreboard players set @s blin_minact_tier 1
execute if entity @a[scores={reguz=1..2}] as @e[type=piglin] run scoreboard players add @s blin_minact_tier 1
execute if entity @a[scores={reguz=3..4}] as @e[type=piglin,scores={blin_boolean=2..}] run scoreboard players set @s blin_boolean 0
execute if entity @a[scores={reguz=2..4}] as @e[type=piglin] run scoreboard players add @s blin_boolean 1
execute if entity @a[scores={reguz=3..4}] as @e[type=piglin,scores={blin_max_tier=5..}] run scoreboard players set @s blin_max_tier 1
execute if entity @a[scores={reguz=2..4}] as @e[type=piglin] run scoreboard players add @s blin_max_tier 1
execute if entity @a[scores={reguz=3..4}] as @e[type=piglin,scores={hung_minact_tier=5..}] run scoreboard players set @s hung_minact_tier 1
execute if entity @a[scores={reguz=4..4}] as @e[type=piglin] run scoreboard players add @s hung_minact_tier 1
execute if entity @a[scores={reguz=2..4}] as @e[type=piglin,scores={hung_boolean=2..}] run scoreboard players set @s hung_boolean 0
execute if entity @a[scores={reguz=1..3}] as @e[type=piglin] run scoreboard players add @s hung_boolean 1
execute if entity @a[scores={reguz=2..4}] as @e[type=piglin,scores={hung_max_tier=5..}] run scoreboard players set @s hung_max_tier 1
execute if entity @a[scores={reguz=3..4}] as @e[type=piglin] run scoreboard players add @s hung_max_tier 1
execute if entity @a[scores={reguz=2..4}] as @e[type=piglin,scores={weak_minact_tier=3..}] run scoreboard players set @s weak_minact_tier 1
execute if entity @a[scores={reguz=3..4}] as @e[type=piglin] run scoreboard players add @s weak_minact_tier 1
execute if entity @a[scores={reguz=4..4}] as @e[type=piglin,scores={weak_boolean=2..}] run scoreboard players set @s weak_boolean 0
execute if entity @a[scores={reguz=1..2}] as @e[type=piglin] run scoreboard players add @s weak_boolean 1
execute if entity @a[scores={reguz=2..4}] as @e[type=piglin,scores={weak_max_tier=3..}] run scoreboard players set @s weak_max_tier 1
execute if entity @a[scores={reguz=4..4}] as @e[type=piglin] run scoreboard players add @s weak_max_tier 1
execute if entity @a[scores={reguz=2..4}] as @e[type=piglin,scores={poi_minact_tier=5..}] run scoreboard players set @s poi_minact_tier 1
execute if entity @a[scores={reguz=4..4}] as @e[type=piglin] run scoreboard players add @s poi_minact_tier 1
execute if entity @a[scores={reguz=2..4}] as @e[type=piglin,scores={poi_boolean=2..}] run scoreboard players set @s poi_boolean 0
execute if entity @a[scores={reguz=1..3}] as @e[type=piglin] run scoreboard players add @s poi_boolean 1
execute if entity @a[scores={reguz=2..4}] as @e[type=piglin,scores={poi_max_tier=5..}] run scoreboard players set @s poi_max_tier 1
execute if entity @a[scores={reguz=3..4}] run function minecraft_alive_strpd:data/world/functions/effects/disease/spreaders/zombiepig_/43
execute if entity @a[scores={reguz=4..4}] as @e[type=piglin] run scoreboard players add @s with_minact_tier 1
execute if entity @a[scores={reguz=2..4}] as @e[type=piglin,scores={with_boolean=2..}] run scoreboard players set @s with_boolean 0
execute if entity @a[scores={reguz=3..4}] run function minecraft_alive_strpd:data/world/functions/effects/disease/spreaders/zombiepig_/46
execute if entity @a[scores={reguz=1..1}] as @e[type=piglin] at @s as @e[type=!piglin,distance=0..1,scores={DT=..0}] run scoreboard players set @s DB 0
execute if entity @a[scores={reguz=3..3}] as @e[type=piglin] at @s as @e[type=!piglin,distance=0..1,scores={DT=..0}] run scoreboard players set @s DB 0
execute if entity @a[scores={reguz=5..5}] as @e[type=piglin] at @s as @e[type=!piglin,distance=0..1,scores={DT=..0}] run scoreboard players set @s DB 0