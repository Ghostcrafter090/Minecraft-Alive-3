function world:lagcontrol/moblag
scoreboard objectives add ent dummy
scoreboard objectives add entd dummy
scoreboard players add @e[name=dmain] entd 1
execute as @e[name=dmain,scores={entd=2..2}] as @e[type=armor_stand,tag=mina] run scoreboard players add @e[name=dmain] ent 1
execute as @e[name=dmain,scores={entd=2..2}] as @e[type=armor_stand,tag=vil] run scoreboard players add @e[name=dmain] ent 1
execute as @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={ent=13..}] run kill @e[type=armor_stand,tag=mina]
execute as @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={ent=13..}] run kill @e[type=armor_stand,tag=vil]
execute as @e[name=dmain,scores={entd=5..5}] run scoreboard players set @e[name=dmain] entd 0
execute as @e[name=dmain,scores={entd=4..4}] run scoreboard players set @e[name=dmain] ent 0
execute if entity @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={ent=30..}] run say [Minecraft Alive] - Warning: Max Activity Detected. Killing 13+ entities...
scoreboard objectives add enta dummy
scoreboard objectives add entad dummy
scoreboard players add @e[name=dmain] entad 1
execute as @e[name=dmain,scores={entad=2..2}] as @e[type=falling_block] run scoreboard players add @e[name=dmain] enta 1
execute as @e[name=dmain,scores={entad=2..2}] as @e[type=item] run scoreboard players add @e[name=dmain] enta 1
execute as @e[name=dmain,scores={entad=2..2}] as @e[type=wither_skull] run scoreboard players add @e[name=dmain] enta 1
execute as @e[name=dmain,scores={entad=2..2}] as @e[type=small_fireball] run scoreboard players add @e[name=dmain] enta 1
execute as @e[name=dmain,scores={entad=3..3}] if entity @e[name=dmain,scores={enta=80..}] run kill @e[type=falling_block,sort=random,limit=5]
execute as @e[name=dmain,scores={entad=3..3}] if entity @e[name=dmain,scores={enta=80..}] run kill @e[type=item,sort=random,limit=5]
execute as @e[name=dmain,scores={entad=3..3}] if entity @e[name=dmain,scores={enta=80..}] run kill @e[type=wither_skull,sort=random,limit=5]
execute as @e[name=dmain,scores={entad=3..3}] if entity @e[name=dmain,scores={enta=80..}] run kill @e[type=small_fireball,sort=random,limit=5]
execute as @e[name=dmain,scores={entad=5..5}] run scoreboard players set @e[name=dmain] entad 0
execute as @e[name=dmain,scores={entad=4..4}] run scoreboard players set @e[name=dmain] enta 0
execute if entity @e[name=dmain,scores={entad=3..3}] if entity @e[name=dmain,scores={enta=80..}] run say [Minecraft Alive] - Warning: Max Junk Detected. Killing 5+ entities...
scoreboard objectives add entskeleton dummy
execute as @e[name=dmain,scores={entd=2..2}] as @e[type=skeleton] run scoreboard players add @e[name=dmain] entskeleton 1
execute as @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={entskeleton=100..}] run kill @e[type=skeleton,limit=5,sort=random]
execute as @e[name=dmain,scores={entd=4..4}] run scoreboard players set @e[name=dmain] entskeleton 0
execute if entity @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={entskeleton=100..}] run say [Minecraft Alive] - Warning: Max Skeletons Detected. Killing 5+ entities...
scoreboard objectives add entspider dummy
execute as @e[name=dmain,scores={entd=2..2}] as @e[type=spider] run scoreboard players add @e[name=dmain] entspider 1
execute as @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={entspider=100..}] run kill @e[type=spider,limit=5,sort=random]
execute as @e[name=dmain,scores={entd=4..4}] run scoreboard players set @e[name=dmain] entspider 0
execute if entity @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={entspider=100..}] run say [Minecraft Alive] - Warning: Max Spiders Detected. Killing 5+ entities...
scoreboard objectives add entcreeper dummy
execute as @e[name=dmain,scores={entd=2..2}] as @e[type=creeper] run scoreboard players add @e[name=dmain] entcreeper 1
execute as @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={entcreeper=100..}] run kill @e[type=creeper,limit=5,sort=random]
execute as @e[name=dmain,scores={entd=4..4}] run scoreboard players set @e[name=dmain] entcreeper 0
execute if entity @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={entcreeper=100..}] run say [Minecraft Alive] - Warning: Max Creepers Detected. Killing 5+ entities...
scoreboard objectives add entpig dummy
execute as @e[name=dmain,scores={entd=2..2}] as @e[type=pig] run scoreboard players add @e[name=dmain] entpig 1
execute as @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={entpig=100..}] run kill @e[type=pig,limit=5,sort=random]
execute as @e[name=dmain,scores={entd=4..4}] run scoreboard players set @e[name=dmain] entpig 0
execute if entity @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={entpig=100..}] run say [Minecraft Alive] - Warning: Max Pigs Detected. Killing 5+ entities...
scoreboard objectives add entcow dummy
execute as @e[name=dmain,scores={entd=2..2}] as @e[type=cow] run scoreboard players add @e[name=dmain] entcow 1
execute as @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={entcow=100..}] run kill @e[type=cow,limit=5,sort=random]
execute as @e[name=dmain,scores={entd=4..4}] run scoreboard players set @e[name=dmain] entcow 0
execute if entity @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={entcow=100..}] run say [Minecraft Alive] - Warning: Max Cows Detected. Killing 5+ entities...
scoreboard objectives add entsheep dummy
execute as @e[name=dmain,scores={entd=2..2}] as @e[type=sheep] run scoreboard players add @e[name=dmain] entsheep 1
execute as @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={entsheep=100..}] run kill @e[type=sheep,limit=5,sort=random]
execute as @e[name=dmain,scores={entd=4..4}] run scoreboard players set @e[name=dmain] entsheep 0
execute if entity @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={entsheep=100..}] run say [Minecraft Alive] - Warning: Max Sheep Detected. Killing 5+ entities...
scoreboard objectives add entchicken dummy
execute as @e[name=dmain,scores={entd=2..2}] as @e[type=chicken] run scoreboard players add @e[name=dmain] entchicken 1
execute as @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={entchicken=70..}] run kill @e[type=chicken,limit=5,sort=random]
execute as @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={entchicken=100..}] run kill @e[type=chicken,limit=5,sort=random]
execute as @e[name=dmain,scores={entd=4..4}] run scoreboard players set @e[name=dmain] entchicken 0
execute if entity @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={entchicken=100..}] run say [Minecraft Alive] - Warning: Max Chickens Detected. Killing 5+ entities...
scoreboard objectives add entsawayig dummy
execute as @e[name=dmain,scores={entd=2..2}] as @e[tag=sawayig] run scoreboard players add @e[name=dmain] entsawayig 1
execute as @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={entsawayig=100..}] run kill @e[tag=sawayig,limit=20,sort=random]
execute as @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={entsawayig=150..}] run kill @e[tag=sawayig,limit=20,sort=random]
execute as @e[name=dmain,scores={entd=4..4}] run scoreboard players set @e[name=dmain] entsawayig 0
execute if entity @e[name=dmain,scores={entd=3..3}] if entity @e[name=dmain,scores={entsawayig=100..}] run say [Minecraft Alive] - Warning: Max Sawayigs Detected. Killing 20+ entities...