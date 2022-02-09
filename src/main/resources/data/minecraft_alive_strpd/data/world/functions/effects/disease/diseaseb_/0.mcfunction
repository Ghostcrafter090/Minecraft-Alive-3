
execute at @s as @e[distance=0..80,type=!zombie,scores={DB=1..1}] if entity @s[type=!drowned] if entity @s[type=!husk] if entity @s[type=!wither] if entity @s[type=!wither_skeleton] if entity @s[type=!piglin] if entity @s[type=!zombie_villager] run scoreboard players add @s DT 5
execute at @s as @e[distance=0..80,type=!zombie,scores={DB=1..1,DT=8000..}] if entity @s[type=!drowned] if entity @s[type=!husk] if entity @s[type=!wither] if entity @s[type=!wither_skeleton] if entity @s[type=!piglin] if entity @s[type=!zombie_villager] run scoreboard players set @s DB 2
execute at @s as @e[distance=0..80,type=!zombie,scores={DB=2..2}] if entity @s[type=!drowned] if entity @s[type=!husk] if entity @s[type=!wither] if entity @s[type=!wither_skeleton] if entity @s[type=!piglin] if entity @s[type=!zombie_villager] run scoreboard players remove @s DT 25
execute at @s as @e[distance=0..80,type=!zombie,scores={DB=1..2}] if entity @s[type=!drowned] if entity @s[type=!husk] if entity @s[type=!wither] if entity @s[type=!wither_skeleton] if entity @s[type=!piglin] if entity @s[type=!zombie_villager] run scoreboard players add @s AT 1
execute at @s as @e[distance=0..80,type=!zombie,scores={DB=2..2,DT=..-6}] if entity @s[type=!drowned] if entity @s[type=!husk] if entity @s[type=!wither] if entity @s[type=!wither_skeleton] if entity @s[type=!piglin] if entity @s[type=!zombie_villager] run scoreboard players set @s DB 0
execute at @s as @e[distance=0..80,type=!zombie,scores={AT=300..}] if entity @s[type=!drowned] if entity @s[type=!husk] if entity @s[type=!wither] if entity @s[type=!wither_skeleton] if entity @s[type=!piglin] if entity @s[type=!zombie_villager] run scoreboard players set @s AT 240
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={slow_minact_tier=-10..10}] run scoreboard players reset @s slow_minact_tier
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={slow_boolean=-10..10}] run scoreboard players reset @s slow_boolean
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={slow_max_tier=-10..10}] run scoreboard players reset @s slow_max_tier
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={minf_minact_tier=-10..10}] run scoreboard players reset @s minf_minact_tier
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={minf_boolean=-10..10}] run scoreboard players reset @s minf_boolean
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={minf_max_tier=-10..10}] run scoreboard players reset @s minf_max_tier
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={nau_minact_tier=-10..10}] run scoreboard players reset @s nau_minact_tier
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={nau_boolean=-10..10}] run scoreboard players reset @s nau_boolean
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={nau_max_tier=-10..10}] run scoreboard players reset @s nau_max_tier
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={blin_minact_tier=-10..10}] run scoreboard players reset @s blin_minact_tier
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={blin_boolean=-10..10}] run scoreboard players reset @s blin_boolean
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={blin_max_tier=-10..10}] run scoreboard players reset @s blin_max_tier
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={hung_minact_tier=-10..10}] run scoreboard players reset @s hung_minact_tier
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={hung_boolean=-10..10}] run scoreboard players reset @s hung_boolean
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={hung_max_tier=-10..10}] run scoreboard players reset @s hung_max_tier
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={weak_minact_tier=-10..10}] run scoreboard players reset @s weak_minact_tier
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={weak_boolean=-10..10}] run scoreboard players reset @s weak_boolean
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={weak_max_tier=-10..10}] run scoreboard players reset @s weak_max_tier
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={poi_minact_tier=-10..10}] run scoreboard players reset @s poi_minact_tier
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={poi_boolean=-10..10}] run scoreboard players reset @s poi_boolean
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={poi_max_tier=-10..10}] run scoreboard players reset @s poi_max_tier
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={with_minact_tier=-10..10}] run scoreboard players reset @s with_minact_tier
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={with_boolean=-10..10}] run scoreboard players reset @s with_boolean
execute at @s as @e[distance=0..80,scores={DT=..-4,DB=0..0}] if entity @s[scores={with_max_tier=-10..10}] run scoreboard players reset @s with_max_tier
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={slow_boolean=1..1}] run scoreboard players operation @s slow_minact_tier = @e[distance=0..1,scores={DB=1..2}] slow_minact_tier
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={slow_boolean=1..1}] run scoreboard players operation @s slow_max_tier = @e[distance=0..1,scores={DB=1..2}] slow_max_tier
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={slow_boolean=1..1}] run scoreboard players operation @s slow_boolean = @e[distance=0..1,scores={DB=1..2}] slow_boolean
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={minf_boolean=1..1}] run scoreboard players operation @s minf_minact_tier = @e[distance=0..1,scores={DB=1..2}] minf_minact_tier
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={minf_boolean=1..1}] run scoreboard players operation @s minf_max_tier = @e[distance=0..1,scores={DB=1..2}] minf_max_tier
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={minf_boolean=1..1}] run scoreboard players operation @s minf_boolean = @e[distance=0..1,scores={DB=1..2}] minf_boolean
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={nau_boolean=1..1}] run scoreboard players operation @s nau_minact_tier = @e[distance=0..1,scores={DB=1..2}] nau_minact_tier
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={nau_boolean=1..1}] run scoreboard players operation @s nau_max_tier = @e[distance=0..1,scores={DB=1..2}] nau_max_tier
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={nau_boolean=1..1}] run scoreboard players operation @s nau_boolean = @e[distance=0..1,scores={DB=1..2}] nau_boolean
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={blin_boolean=1..1}] run scoreboard players operation @s blin_minact_tier = @e[distance=0..1,scores={DB=1..2}] blin_minact_tier
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={blin_boolean=1..1}] run scoreboard players operation @s blin_max_tier = @e[distance=0..1,scores={DB=1..2}] blin_max_tier
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={blin_boolean=1..1}] run scoreboard players operation @s blin_boolean = @e[distance=0..1,scores={DB=1..2}] blin_boolean
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={hung_boolean=1..1}] run scoreboard players operation @s hung_minact_tier = @e[distance=0..1,scores={DB=1..2}] hung_minact_tier
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={hung_boolean=1..1}] run scoreboard players operation @s hung_max_tier = @e[distance=0..1,scores={DB=1..2}] hung_max_tier
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={hung_boolean=1..1}] run scoreboard players operation @s hung_boolean = @e[distance=0..1,scores={DB=1..2}] hung_boolean
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={weak_boolean=1..1}] run scoreboard players operation @s weak_minact_tier = @e[distance=0..1,scores={DB=1..2}] weak_minact_tier
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={weak_boolean=1..1}] run scoreboard players operation @s weak_max_tier = @e[distance=0..1,scores={DB=1..2}] weak_max_tier
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={weak_boolean=1..1}] run scoreboard players operation @s weak_boolean = @e[distance=0..1,scores={DB=1..2}] weak_boolean
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={poi_boolean=1..1}] run scoreboard players operation @s poi_minact_tier = @e[distance=0..1,scores={DB=1..2}] poi_minact_tier
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={poi_boolean=1..1}] run scoreboard players operation @s poi_max_tier = @e[distance=0..1,scores={DB=1..2}] poi_max_tier
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={poi_boolean=1..1}] run scoreboard players operation @s poi_boolean = @e[distance=0..1,scores={DB=1..2}] poi_boolean
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={with_boolean=1..1}] run scoreboard players operation @s with_minact_tier = @e[distance=0..1,scores={DB=1..2}] with_minact_tier
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={with_boolean=1..1}] run scoreboard players operation @s with_max_tier = @e[distance=0..1,scores={DB=1..2}] with_max_tier
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={with_boolean=1..1}] run scoreboard players operation @s with_boolean = @e[distance=0..1,scores={DB=1..2}] with_boolean
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..0}] run scoreboard players set @s DB 1
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={DB=-10..10}] run scoreboard players set @s DB 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={slow_minact_tier=-10..10}] run scoreboard players set @s slow_minact_tier 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={slow_boolean=-10..10}] run scoreboard players set @s slow_boolean 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={slow_max_tier=-10..10}] run scoreboard players set @s slow_max_tier 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={minf_minact_tier=-10..10}] run scoreboard players set @s minf_minact_tier 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={minf_boolean=-10..10}] run scoreboard players set @s minf_boolean 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={minf_max_tier=-10..10}] run scoreboard players set @s minf_max_tier 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={nau_minact_tier=-10..10}] run scoreboard players set @s nau_minact_tier 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={nau_boolean=-10..10}] run scoreboard players set @s nau_boolean 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={nau_max_tier=-10..10}] run scoreboard players set @s nau_max_tier 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={blin_minact_tier=-10..10}] run scoreboard players set @s blin_minact_tier 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={blin_boolean=-10..10}] run scoreboard players set @s blin_boolean 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={blin_max_tier=-10..10}] run scoreboard players set @s blin_max_tier 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={hung_minact_tier=-10..10}] run scoreboard players set @s hung_minact_tier 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={hung_boolean=-10..10}] run scoreboard players set @s hung_boolean 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={hung_max_tier=-10..10}] run scoreboard players set @s hung_max_tier 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={weak_minact_tier=-10..10}] run scoreboard players set @s weak_minact_tier 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={weak_boolean=-10..10}] run scoreboard players set @s weak_boolean 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={weak_max_tier=-10..10}] run scoreboard players set @s weak_max_tier 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={poi_minact_tier=-10..10}] run scoreboard players set @s poi_minact_tier 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={poi_boolean=-10..10}] run scoreboard players set @s poi_boolean 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={poi_max_tier=-10..10}] run scoreboard players set @s poi_max_tier 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={with_minact_tier=-10..10}] run scoreboard players set @s with_minact_tier 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={with_boolean=-10..10}] run scoreboard players set @s with_boolean 0
execute at @s as @e[distance=0..80,scores={DB=1..2}] at @s as @e[distance=0..1] unless entity @s[scores={with_max_tier=-10..10}] run scoreboard players set @s with_max_tier 0