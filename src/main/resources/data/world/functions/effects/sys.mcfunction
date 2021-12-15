# Define
scoreboard objectives add blocktd dummy

# Config
gamerule commandBlockOutput false

#addrenelin
scoreboard objectives add ADD minecraft.custom:minecraft.damage_taken
execute as @a[scores={ADD=1..}] run effect give @s strength 30
execute as @a[scores={ADD=1..}] run effect give @s speed 30
execute as @a[scores={ADD=1..}] run effect give @s jump_boost 30
execute as @a[scores={ADD=1..}] run scoreboard players set @s ADD 0

# Disease
scoreboard objectives add regud dummy
scoreboard players add @e[name=dmain,type=armor_stand] regud 1
scoreboard players operation @e[name=dmain,type=armor_stand] blocktd = @e[name=dmain,type=armor_stand] blockt
scoreboard players add @e[name=dmain,type=armor_stand] blocktd 5
scoreboard players operation @e[name=dmain,type=armor_stand] blocktd -= @e[name=dmain,type=armor_stand] regud
execute as @e[name=dmain,type=armor_stand,scores={blocktd=..0}] run scoreboard players set @e[name=dmain,type=armor_stand] regud 0
execute as @e[name=dmain,type=armor_stand,scores={regud=1..1}] run function world:effects/disease/diseasea
execute as @e[name=dmain,type=armor_stand,scores={regud=2..2}] run function world:effects/disease/diseaseb
execute as @e[name=dmain,type=armor_stand,scores={regud=3..3}] run function world:effects/disease/diseasec
execute as @e[name=dmain,type=armor_stand,scores={regud=4..4}] run function world:effects/disease/diseased
scoreboard objectives add dsreg dummy
scoreboard players add @e[name=dmain,type=armor_stand] dsreg 1
execute as @e[name=dmain,type=armor_stand,scores={dsreg=2..}] run scoreboard players set @s dsreg 0
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={slow_boolean=1..1}] run scoreboard players operation @s slow_minact_tier = @e[distance=0..1,scores={DB=1..2}] slow_minact_tier
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={slow_boolean=1..1}] run scoreboard players operation @s slow_max_tier = @e[distance=0..1,scores={DB=1..2}] slow_max_tier
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={slow_boolean=1..1}] run scoreboard players operation @s slow_boolean = @e[distance=0..1,scores={DB=1..2}] slow_boolean
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={minf_boolean=1..1}] run scoreboard players operation @s minf_minact_tier = @e[distance=0..1,scores={DB=1..2}] minf_minact_tier
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={minf_boolean=1..1}] run scoreboard players operation @s minf_max_tier = @e[distance=0..1,scores={DB=1..2}] minf_max_tier
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={minf_boolean=1..1}] run scoreboard players operation @s minf_boolean = @e[distance=0..1,scores={DB=1..2}] minf_boolean
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={nau_boolean=1..1}] run scoreboard players operation @s nau_minact_tier = @e[distance=0..1,scores={DB=1..2}] nau_minact_tier
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={nau_boolean=1..1}] run scoreboard players operation @s nau_max_tier = @e[distance=0..1,scores={DB=1..2}] nau_max_tier
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={nau_boolean=1..1}] run scoreboard players operation @s nau_boolean = @e[distance=0..1,scores={DB=1..2}] nau_boolean
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={blin_boolean=1..1}] run scoreboard players operation @s blin_minact_tier = @e[distance=0..1,scores={DB=1..2}] blin_minact_tier
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={blin_boolean=1..1}] run scoreboard players operation @s blin_max_tier = @e[distance=0..1,scores={DB=1..2}] blin_max_tier
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={blin_boolean=1..1}] run scoreboard players operation @s blin_boolean = @e[distance=0..1,scores={DB=1..2}] blin_boolean
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={hung_boolean=1..1}] run scoreboard players operation @s hung_minact_tier = @e[distance=0..1,scores={DB=1..2}] hung_minact_tier
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={hung_boolean=1..1}] run scoreboard players operation @s hung_max_tier = @e[distance=0..1,scores={DB=1..2}] hung_max_tier
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={hung_boolean=1..1}] run scoreboard players operation @s hung_boolean = @e[distance=0..1,scores={DB=1..2}] hung_boolean
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={weak_boolean=1..1}] run scoreboard players operation @s weak_minact_tier = @e[distance=0..1,scores={DB=1..2}] weak_minact_tier
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={weak_boolean=1..1}] run scoreboard players operation @s weak_max_tier = @e[distance=0..1,scores={DB=1..2}] weak_max_tier
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={weak_boolean=1..1}] run scoreboard players operation @s weak_boolean = @e[distance=0..1,scores={DB=1..2}] weak_boolean
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={poi_boolean=1..1}] run scoreboard players operation @s poi_minact_tier = @e[distance=0..1,scores={DB=1..2}] poi_minact_tier
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={poi_boolean=1..1}] run scoreboard players operation @s poi_max_tier = @e[distance=0..1,scores={DB=1..2}] poi_max_tier
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={poi_boolean=1..1}] run scoreboard players operation @s poi_boolean = @e[distance=0..1,scores={DB=1..2}] poi_boolean
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={with_boolean=1..1}] run scoreboard players operation @s with_minact_tier = @e[distance=0..1,scores={DB=1..2}] with_minact_tier
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={with_boolean=1..1}] run scoreboard players operation @s with_max_tier = @e[distance=0..1,scores={DB=1..2}] with_max_tier
execute if entity @e[name=dmain,type=armor_stand,scores={dsreg=1..1}] as @e[scores={DB=1..2}] at @s as @e[distance=0..1,scores={DB=0..1}] unless entity @s[scores={with_boolean=1..1}] run scoreboard players operation @s with_boolean = @e[distance=0..1,scores={DB=1..2}] with_boolean

# Spreaders
execute if entity @a[scores={reguz=4..4}] if entity @e[type=zombie] run function world:effects/disease/spreaders/zombie
execute if entity @a[scores={reguz=4..4}] if entity @e[type=drowned] run function world:effects/disease/spreaders/drowned
execute if entity @a[scores={reguz=4..4}] if entity @e[type=husk] run function world:effects/disease/spreaders/husk
execute if entity @a[scores={reguz=4..4}] if entity @e[type=wither] run function world:effects/disease/spreaders/wither
execute if entity @a[scores={reguz=4..4}] if entity @e[type=wither_skull] run function world:effects/disease/spreaders/witherskull
execute if entity @a[scores={reguz=4..4}] if entity @e[type=wither_skeleton] run function world:effects/disease/spreaders/witherskele
execute if entity @a[scores={reguz=4..4}] if entity @e[type=piglin] run function world:effects/disease/spreaders/zombiepig
execute if entity @a[scores={reguz=4..4}] if entity @e[type=zombie_villager] run function world:effects/disease/spreaders/zombievill

# Diseasereset
scoreboard objectives add DBD dummy
scoreboard objectives add DTD dummy
execute if entity @e[scores={time=0..1},name=dmain,type=armor_stand] as @a run scoreboard players operation @s DBD = @s DB
execute if entity @e[scores={time=0..1},name=dmain,type=armor_stand] as @a run scoreboard players operation @s DTD = @s DT
execute if entity @e[scores={time=2..3},name=dmain,type=armor_stand] run scoreboard objectives remove DB
execute if entity @e[scores={time=2..3},name=dmain,type=armor_stand] run scoreboard objectives remove DT
execute if entity @e[scores={time=20..21},name=dmain,type=armor_stand] as @a run scoreboard players operation @s DB = @s DBD
execute if entity @e[scores={time=20..21},name=dmain,type=armor_stand] as @a run scoreboard players operation @s DT = @s DTD

# Extras
execute at @e[type=villager] as @a[distance=0..6] at @s run say Hello!

# Populations
execute as @e[type=villager,tag=!vil] unless entity @s[scores={vwl=2..2}] at @s if blocks -4 253 4 3 253 -4 ~-4 ~-1 ~-4 masked run scoreboard players set @s vwl 1
execute as @e[type=villager,tag=!vil,scores={vwl=1..1}] run scoreboard players set @s vwlt 0
execute as @e[type=villager,tag=!vil,scores={vwl=1..1}] run scoreboard players set @s vwl 2
execute as @e[type=villager,tag=!vil,scores={vwl=1..1}] at @s if entity @e[type=villager,tag=!vil,scores={vwl=2..2},distance=0..10] run scoreboard players set @s vwl 0
