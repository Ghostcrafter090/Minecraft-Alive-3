
execute as @e[tag=!notick,type=item,tag=fire_key_shard] run function world:bosses/wither/start.0/0
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=100..}] as @e[limit=2,sort=random,tag=!effectwither] run tag @s add effectwither
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=100..100}] as @e[type=item,tag=fire_key_shard] at @s as @e[limit=10] run summon marker ~ ~-20 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["portal"],CustomName:'{"text":"portal"}'}
execute as @e[type=item,tag=fire_key_shard,scores={witherStartTic=100..}] as @e[tag=effectwither] run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force
execute unless entity @e[tag=!effectwither] run function world:bosses/wither/start.0/4
execute if entity @e[type=item,tag=fire_key_shard,scores={witherStartTic=1000..}] run function world:bosses/wither/start.0/5