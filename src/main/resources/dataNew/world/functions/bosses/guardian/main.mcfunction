
function world:bosses/guardian/main.0/0
execute as @e[tag=!notick,type=item,tag=water_key_shard] run function world:bosses/guardian/main.0/1
execute as @e[type=item,tag=water_key_shard,scores={guardStartTic=1..}] run function world:bosses/guardian/main.0/2
execute if entity @e[tag=dmain,type=marker,scores={guardBool=1..1}] run function world:bosses/guardian/effects
execute as @e[type=item,tag=water_key_shard] run function world:bosses/guardian/main.0/4
function world:bosses/guardian/main.0/5
execute as @e[tag=water_key_spawn,type=marker,scores={timeAlive=10..}] run function world:bosses/guardian/main.0/6
execute as @e[tag=water_key_spawn_site] run function world:bosses/guardian/main.0/7
execute as @e[type=elder_guardian,tag=!vuln,tag=!elder] run function world:bosses/guardian/main.0/8
execute as @e[type=elder_guardian,tag=vuln,tag=!vulnN] run function world:bosses/guardian/main.0/9
execute as @a[nbt={SelectedItem:{id:"mca:water_key"}}] run function world:bosses/guardian/main.0/10
scoreboard players set @e[tag=dmain,type=marker] playerElderKills 0
execute as @a run scoreboard players operation @e[tag=dmain,type=marker] playerElderKills += @a elderGuardKill 
execute as @e[tag=dmain,type=marker] run function world:bosses/guardian/main.0/13
execute as @e[type=guardian] at @s unless entity @e[type=elder_guardian,distance=0..200] run effect give @s wither 10 0