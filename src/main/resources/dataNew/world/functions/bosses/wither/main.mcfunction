
function world:bosses/wither/main.0/0
execute as @e[tag=!notick,type=item,tag=fire_key_shard] run function world:bosses/wither/main.0/1
execute as @e[type=item,tag=fire_key_shard,scores={witherStartTic=1..}] run function world:bosses/wither/main.0/2
execute if entity @e[tag=dmain,scores={witherBool=1..1}] run function world:bosses/wither/effects
execute as @e[type=item,tag=fire_key_shard] run function world:bosses/wither/main.0/4
function world:bosses/wither/main.0/5
execute as @e[tag=fire_key_spawn,type=marker,scores={timeAlive=10..}] at @s run summon item ~ ~ ~ {Item:{id:"mca:fire_key",Count:1b},Tags:['dimensional','fire_key'],Health:32786}
execute as @e[type=item,tag=fire_key] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace fire
execute as @e[tag=fire_key_spawn,type=marker,scores={timeAlive=10..}] at @s run kill @s
execute as @e[tag=fire_key_spawn_site] run function world:bosses/wither/main.0/9
execute as @e[tag=portal,type=marker,tag=finished] at @s unless block ~ ~2 ~ nether_portal run scoreboard players add @s portalDeath 3
execute as @e[tag=portal,type=marker,tag=finished,scores={portalDeath=1..}] run scoreboard players remove @s portalDeath 1
execute if entity @e[tag=portal,type=marker,tag=finished,scores={portalDeath=1..}] run tag @e[limit=1,sort=random,tag=!portalDeath] add portalDeath
execute as @e[tag=portal,type=marker,tag=finished,scores={portalDeath=1..}] at @s run particle minecraft:dragon_breath ~ ~3 ~ 1 1 1 1 1 force
execute as @e[tag=portal,type=marker,tag=finished,scores={portalDeath=600..}] at @s positioned ~ ~3 ~ run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 blackstone replace obsidian
execute as @e[tag=portal,type=marker,tag=finished,scores={portalDeath=600..610}] at @s positioned ~ ~3 ~ run summon fireball ~ ~ ~ {ExplosionPower:3b,power:[0.0,1.0,0.0]}
execute as @e[tag=portal,type=marker,tag=finished,scores={portalDeath=600..}] run kill @s
execute unless entity @e[tag=portal,type=marker,tag=finished,scores={portalDeath=1..}] as @e[tag=portalDeath,limit=1,sort=random] run tag @s remove portalDeath
execute as @e[type=wither,tag=!vuln,tag=!With] run function world:bosses/wither/main.0/18
execute as @e[type=wither,tag=vuln,tag=!vulnN] run function world:bosses/wither/main.0/19
execute as @a[nbt={SelectedItem:{id:"mca:fire_key"}}] run function world:bosses/wither/main.0/20
scoreboard players set @e[tag=dmain,type=marker] playerWithKills 0
execute as @a run scoreboard players operation @e[tag=dmain,type=marker] playerWithKills += @a withWitherKill
execute as @e[tag=dmain,type=marker] run function world:bosses/wither/main.0/23
execute as @e[type=wither] at @s unless entity @e[type=wither,distance=0..200] run effect give @s wither 10 0
execute unless entity @e[tag=dmain,type=marker,scores={withEffActive=1..1}] as @e[tag=portal,type=marker,tag=finished] run scoreboard players add @s portalDeath 3
execute unless entity @e[tag=portal,type=marker,tag=finished] as @e[type=piglin,limit=1,sort=random] run data modify entity @s IsImmuneToZombification set value 0b