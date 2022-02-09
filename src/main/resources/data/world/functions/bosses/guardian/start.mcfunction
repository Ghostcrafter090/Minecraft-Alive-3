
execute as @e[type=item,tag=water_key_shard] run function world:bosses/guardian/start_/0
execute if entity @e[type=item,tag=water_key_shard,scores={guardStartTic=100..}] as @e[limit=2,sort=random,tag=!effectguard] run tag @s add effectguard
execute as @e[type=item,tag=water_key_shard,scores={guardStartTic=100..}] as @e[tag=effectguard] run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force
execute unless entity @e[tag=!effectguard] run function world:bosses/guardian/start_/3
execute if entity @e[type=item,tag=water_key_shard,scores={guardStartTic=1000..}] run function world:bosses/guardian/start_/4